# Share a library between ROS 1 and ROS 2 projects

ROS 1 and ROS 2 are using different build systems (`catkin` and `colcon`) that are not compatible.

So a `catkin` library cannot be directly built with `colcon` and vice-versa.

For a C++ library that is ROS agnostic, the solution seems to create a pure CMake library that can be used in both build system.

In this demo repository, there is:

- A common `lib_foo` library
- A `bar_ros1` ROS 1 node
- A `bar_ros2` ROS 2 node

## Test the demo

With ROS 1 (using [catkin-tools](https://catkin-tools.readthedocs.io/en/latest/)):
```bash
git clone https://github.com/romainreignier/share_ros1_ros2_lib_demo.git
cd share_ros1_ros2_lib_demo
source /opt/ros/melodic/setup.bash
touch src/bar_ros2/CATKIN_IGNORE
catkin init
catkin build
source devel/setup.bash
rosrun bar_ros1 bar_ros1_node
catkin clean
rm src/bar_ros2/CATKIN_IGNORE
```

With ROS 2:

**Create a new terminal window to get a clean environment and not mix ROS 1 and ROS 2**

```bash
touch src/bar_ros1/COLCON_IGNORE
source /opt/ros/dashing/setup.bash
colcon build
source install/setup.bash
ros2 run bar_ros2 bar_ros2_node
```

## Acknowledgements

Thanks [@gavanderhoorn](https://github.com/gavanderhoorn) for the [help](https://answers.ros.org/question/328239/how-to-share-a-library-between-ros-1-and-ros-2/).

Based on [the work](https://github.com/Jmeyer1292/opw_kinematics/pull/25) of [@Levi-Armstrong](https://github.com/Levi-Armstrong) on [opw_kinematics](https://github.com/Jmeyer1292/opw_kinematics)