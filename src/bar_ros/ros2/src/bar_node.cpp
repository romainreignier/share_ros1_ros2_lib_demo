#include <rclcpp/rclcpp.hpp>

#include <lib_foo/foo.h>

int main(int argc, char** argv)
{
    rclcpp::init(argc, argv);

    auto node = rclcpp::Node::make_shared("bar_node");

    RCLCPP_INFO(node->get_logger(), "Use lib_foo from a ROS 2 node");
    Foo foo;

    return 0;
}