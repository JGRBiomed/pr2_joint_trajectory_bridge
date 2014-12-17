# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pr2_joint_trajectory_bridge: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ipr2_joint_trajectory_bridge:/home/obot/ros/raiti_ws/pr2_joint_trajectory_bridge/msg;-Istd_msgs:/opt/ros/groovy/share/std_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pr2_joint_trajectory_bridge_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pr2_joint_trajectory_bridge
  "/home/obot/ros/raiti_ws/pr2_joint_trajectory_bridge/msg/JointTrajectoryBridge.msg"
  "${MSG_I_FLAGS}"
  "/home/obot/ros/raiti_ws/pr2_joint_trajectory_bridge/msg/JointTrajectoryPointBridge.msg;/opt/ros/groovy/share/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_joint_trajectory_bridge
)
_generate_msg_cpp(pr2_joint_trajectory_bridge
  "/home/obot/ros/raiti_ws/pr2_joint_trajectory_bridge/msg/JointTrajectoryPointBridge.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_joint_trajectory_bridge
)

### Generating Services

### Generating Module File
_generate_module_cpp(pr2_joint_trajectory_bridge
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_joint_trajectory_bridge
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pr2_joint_trajectory_bridge_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pr2_joint_trajectory_bridge_generate_messages pr2_joint_trajectory_bridge_generate_messages_cpp)

# target for backward compatibility
add_custom_target(pr2_joint_trajectory_bridge_gencpp)
add_dependencies(pr2_joint_trajectory_bridge_gencpp pr2_joint_trajectory_bridge_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pr2_joint_trajectory_bridge_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pr2_joint_trajectory_bridge
  "/home/obot/ros/raiti_ws/pr2_joint_trajectory_bridge/msg/JointTrajectoryBridge.msg"
  "${MSG_I_FLAGS}"
  "/home/obot/ros/raiti_ws/pr2_joint_trajectory_bridge/msg/JointTrajectoryPointBridge.msg;/opt/ros/groovy/share/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_joint_trajectory_bridge
)
_generate_msg_lisp(pr2_joint_trajectory_bridge
  "/home/obot/ros/raiti_ws/pr2_joint_trajectory_bridge/msg/JointTrajectoryPointBridge.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_joint_trajectory_bridge
)

### Generating Services

### Generating Module File
_generate_module_lisp(pr2_joint_trajectory_bridge
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_joint_trajectory_bridge
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pr2_joint_trajectory_bridge_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pr2_joint_trajectory_bridge_generate_messages pr2_joint_trajectory_bridge_generate_messages_lisp)

# target for backward compatibility
add_custom_target(pr2_joint_trajectory_bridge_genlisp)
add_dependencies(pr2_joint_trajectory_bridge_genlisp pr2_joint_trajectory_bridge_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pr2_joint_trajectory_bridge_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pr2_joint_trajectory_bridge
  "/home/obot/ros/raiti_ws/pr2_joint_trajectory_bridge/msg/JointTrajectoryBridge.msg"
  "${MSG_I_FLAGS}"
  "/home/obot/ros/raiti_ws/pr2_joint_trajectory_bridge/msg/JointTrajectoryPointBridge.msg;/opt/ros/groovy/share/std_msgs/msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_joint_trajectory_bridge
)
_generate_msg_py(pr2_joint_trajectory_bridge
  "/home/obot/ros/raiti_ws/pr2_joint_trajectory_bridge/msg/JointTrajectoryPointBridge.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_joint_trajectory_bridge
)

### Generating Services

### Generating Module File
_generate_module_py(pr2_joint_trajectory_bridge
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_joint_trajectory_bridge
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pr2_joint_trajectory_bridge_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pr2_joint_trajectory_bridge_generate_messages pr2_joint_trajectory_bridge_generate_messages_py)

# target for backward compatibility
add_custom_target(pr2_joint_trajectory_bridge_genpy)
add_dependencies(pr2_joint_trajectory_bridge_genpy pr2_joint_trajectory_bridge_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pr2_joint_trajectory_bridge_generate_messages_py)


debug_message(2 "pr2_joint_trajectory_bridge: Iflags=${MSG_I_FLAGS}")


if(gencpp_INSTALL_DIR)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pr2_joint_trajectory_bridge
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(pr2_joint_trajectory_bridge_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pr2_joint_trajectory_bridge
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(pr2_joint_trajectory_bridge_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_joint_trajectory_bridge\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pr2_joint_trajectory_bridge
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(pr2_joint_trajectory_bridge_generate_messages_py std_msgs_generate_messages_py)
