cmake_minimum_required(VERSION 3.5.0)
project(bar_ros)

find_package(catkin QUIET)
find_package(ament_cmake QUIET)

if (catkin_FOUND)
  include(ros1/ros.cmake)
elseif(ament_cmake_FOUND)
  include(ros2/ros.cmake)
else()
  message(FATAL_ERROR "ROS build tool not found.")
endif()
