#!/usr/bin/env python2
# coding:utf-8

import rospy
import tf
import numpy as np
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import PoseStamped, Twist
from visualization_msgs.msg import Marker
import math
from numpy import nan, inf
import time

class Controller:
    def __init__(self):
        # Initialize the node
        rospy.init_node('object_detection', anonymous=True)

        self.RAD2DEG = 180 / math.pi
        self.DEG2RAD = math.pi / 180


        # Store the poses
        self.poses = [None, None, None]     # [object1, object2, object3]
        self.frame_ids = ['/laser1', '/laser2', '/laser3']

        self.topic_subscribed_1 = rospy.get_param('~topic_subscribed_1', '/object1')
        self.topic_subscribed_2 = rospy.get_param('~topic_subscribed_2', '/object2')
        self.topic_subscribed_3 = rospy.get_param('~topic_subscribed_3', '/object3')
        self.topic_published = rospy.get_param('~topic_published', '/motion')
        self.tf_listener = tf.TransformListener()
        self.frame_id = rospy.get_param('~frame_id', 'base')
        # Subscriber to the original laser scan topic
        self.subscriber_1 = rospy.Subscriber(self.topic_subscribed_1, PoseStamped, self.pose_callback)
        self.subscriber_2 = rospy.Subscriber(self.topic_subscribed_2, PoseStamped, self.pose_callback)
        self.subscriber_3 = rospy.Subscriber(self.topic_subscribed_3, PoseStamped, self.pose_callback)

        # Publisher for the filtered laser scan topic
        # self.publisher = rospy.Publisher(self.topic_published, Twist, queue_size=10)

    def cal_dist(self, x, y):
        dist = math.sqrt(x**2+y**2)
        return dist

    def pose_callback(self, msg):
        header = msg.header
        frame_id = header.frame_id
        pose = msg.pose.position

        if frame_id == '/laser1':
            self.poses[0] = pose
        elif frame_id == '/laser2':
            self.poses[1] = pose
        elif frame_id == '/laser3':
            self.poses[2] = pose

        # Calculate and publish the minimum distance if we have three poses
        if any(pose is not None for pose in self.poses):
            min_distance, min_distance_index, min_distance_pose = self.calculate_min_distance()
            # self.publisher.publish(min_distance)
            rospy.loginfo('---------------------------------------')
            rospy.loginfo('min_distance: %s', min_distance)
            # rospy.loginfo(min_distance)
            rospy.loginfo('min_distance_index: %s', min_distance_index)
            # rospy.loginfo(min_distance_index)
            x = min_distance_pose[0]
            y = min_distance_pose[1]
            theta = math.atan2(y, x) * self.RAD2DEG
            rospy.loginfo('min_distance_x: %s', x)
            rospy.loginfo('min_distance_y: %s', y)
            rospy.loginfo('min_distance_angle: %s', theta)
            rospy.loginfo('---------------------------------------')
    
    def calculate_min_distance(self):
        # Calculate the pairwise distances
        distances = []
        poses = []
        for i in range(len(self.poses)):
            trans = self.transform_pose('/base', self.frame_ids[i])
            # rospy.loginfo('---------------------------------------')
            # rospy.loginfo('index: %s', i)
            # rospy.loginfo('trans: %s',trans)
            # rospy.loginfo('before transpose: %s', [self.poses[i].x, self.poses[i].y])
            x = self.poses[i].x + trans[0]
            y = self.poses[i].y + trans[1]
            # rospy.loginfo('after transpose: %s', [x, y])
            # rospy.loginfo('---------------------------------------')
            poses.append([x,y])
        
        for i in range(len(poses)):
            distance = self.cal_dist(poses[i][0] , poses[i][1])
            distances.append(distance)

        min_distance = min(distances)
        min_distance_index = distances.index(min_distance)
        min_distance_pose = poses[min_distance_index]
        # Return the minimum distance
        return min_distance, min_distance_index, min_distance_pose
    
    def transform_pose(self, current_frame, target_frame):
        # 转换 PoseStamped 到目标坐标系
        (trans, rot) = self.tf_listener.lookupTransform(current_frame, target_frame, rospy.Time(0))
        # rospy.loginfo('---------------------------------------')
        # rospy.loginfo('trans: %s',trans)
        # rospy.loginfo('---------------------------------------')
        return trans
    
    def run(self):
        rospy.spin()

if __name__ == '__main__':
    try:
        motion_control = Controller()
        motion_control.run()
    except rospy.ROSInterruptException:
        pass
