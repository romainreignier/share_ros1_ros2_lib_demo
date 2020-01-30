find_package(catkin REQUIRED COMPONENTS
  roscpp
)

find_package(lib_foo REQUIRED)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES bar_ros1
#  CATKIN_DEPENDS lib_foo roscpp
#  DEPENDS system_lib
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
  ${lib_foo_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME}_node ros1/src/bar_node.cpp)
target_link_libraries(${PROJECT_NAME}_node
  ${catkin_LIBRARIES}
  ${lib_foo_LIBRARIES}
)
install(TARGETS ${PROJECT_NAME}_node
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
