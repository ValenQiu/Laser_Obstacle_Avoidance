# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/valenqiu/catkin_ws/src/oradar_ros

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/valenqiu/catkin_ws/src/oradar_ros/build

# Include any dependencies generated for this target.
include sdk/samples/CMakeFiles/blocking_c_api_test.dir/depend.make

# Include the progress variables for this target.
include sdk/samples/CMakeFiles/blocking_c_api_test.dir/progress.make

# Include the compile flags for this target's objects.
include sdk/samples/CMakeFiles/blocking_c_api_test.dir/flags.make

sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o: sdk/samples/CMakeFiles/blocking_c_api_test.dir/flags.make
sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o: ../sdk/samples/blocking_c_api_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/valenqiu/catkin_ws/src/oradar_ros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o"
	cd /home/valenqiu/catkin_ws/src/oradar_ros/build/sdk/samples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o   -c /home/valenqiu/catkin_ws/src/oradar_ros/sdk/samples/blocking_c_api_test.c

sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.i"
	cd /home/valenqiu/catkin_ws/src/oradar_ros/build/sdk/samples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/valenqiu/catkin_ws/src/oradar_ros/sdk/samples/blocking_c_api_test.c > CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.i

sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.s"
	cd /home/valenqiu/catkin_ws/src/oradar_ros/build/sdk/samples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/valenqiu/catkin_ws/src/oradar_ros/sdk/samples/blocking_c_api_test.c -o CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.s

sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o.requires:

.PHONY : sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o.requires

sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o.provides: sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o.requires
	$(MAKE) -f sdk/samples/CMakeFiles/blocking_c_api_test.dir/build.make sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o.provides.build
.PHONY : sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o.provides

sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o.provides.build: sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o


# Object files for target blocking_c_api_test
blocking_c_api_test_OBJECTS = \
"CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o"

# External object files for target blocking_c_api_test
blocking_c_api_test_EXTERNAL_OBJECTS =

devel/lib/oradar_lidar/blocking_c_api_test: sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o
devel/lib/oradar_lidar/blocking_c_api_test: sdk/samples/CMakeFiles/blocking_c_api_test.dir/build.make
devel/lib/oradar_lidar/blocking_c_api_test: devel/lib/liboradar_sdk.so
devel/lib/oradar_lidar/blocking_c_api_test: sdk/samples/CMakeFiles/blocking_c_api_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/valenqiu/catkin_ws/src/oradar_ros/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../devel/lib/oradar_lidar/blocking_c_api_test"
	cd /home/valenqiu/catkin_ws/src/oradar_ros/build/sdk/samples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/blocking_c_api_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sdk/samples/CMakeFiles/blocking_c_api_test.dir/build: devel/lib/oradar_lidar/blocking_c_api_test

.PHONY : sdk/samples/CMakeFiles/blocking_c_api_test.dir/build

sdk/samples/CMakeFiles/blocking_c_api_test.dir/requires: sdk/samples/CMakeFiles/blocking_c_api_test.dir/blocking_c_api_test.c.o.requires

.PHONY : sdk/samples/CMakeFiles/blocking_c_api_test.dir/requires

sdk/samples/CMakeFiles/blocking_c_api_test.dir/clean:
	cd /home/valenqiu/catkin_ws/src/oradar_ros/build/sdk/samples && $(CMAKE_COMMAND) -P CMakeFiles/blocking_c_api_test.dir/cmake_clean.cmake
.PHONY : sdk/samples/CMakeFiles/blocking_c_api_test.dir/clean

sdk/samples/CMakeFiles/blocking_c_api_test.dir/depend:
	cd /home/valenqiu/catkin_ws/src/oradar_ros/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/valenqiu/catkin_ws/src/oradar_ros /home/valenqiu/catkin_ws/src/oradar_ros/sdk/samples /home/valenqiu/catkin_ws/src/oradar_ros/build /home/valenqiu/catkin_ws/src/oradar_ros/build/sdk/samples /home/valenqiu/catkin_ws/src/oradar_ros/build/sdk/samples/CMakeFiles/blocking_c_api_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sdk/samples/CMakeFiles/blocking_c_api_test.dir/depend

