# Laser_Obstacle_Avoidance

## 准备工作
### 1. 安装Oradar驱动
下载源码，打开oradar_ros文件夹。 进入该文件夹，打开终端，输入：
```
mkdir bulid
cd build
cmake ..
make -j4
sudo make install
```

### 2.设置雷达的串口名
由于本项目用到了多个雷达，因此需要指定每一个雷达的串口映射。首先连接设备，打开终端输入
```
ll /dev/ttyACM*
```
这一代码将会返回所有ACM类的串口设备，如下：
```
crwxrwxrwx 1 root dialout 166, 0 Jan  3 16:47 /dev/ttyACM0
crwxrwxrwx 1 root dialout 166, 1 Jan  3 16:47 /dev/ttyACM1
crw-rw---- 1 root dialout 166, 2 Jan  3 17:24 /dev/ttyACM2
```
