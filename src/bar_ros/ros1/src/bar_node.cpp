#include <ros/ros.h>

#include <lib_foo/foo.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "bar_node");

    ROS_INFO("Use lib_foo from a ROS 1 node");
    Foo foo;

    return 0;
}