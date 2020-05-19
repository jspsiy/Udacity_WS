# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "agv_control_msgs: 7 messages, 4 services")

set(MSG_I_FLAGS "-Iagv_control_msgs:/home/joshua/capstone_ws/src/agv_control_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(agv_control_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/vehInfo.msg" NAME_WE)
add_custom_target(_agv_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_control_msgs" "/home/joshua/capstone_ws/src/agv_control_msgs/msg/vehInfo.msg" "agv_control_msgs/arrayData:agv_control_msgs/gridData:std_msgs/Header"
)

get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/SignBoard.srv" NAME_WE)
add_custom_target(_agv_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_control_msgs" "/home/joshua/capstone_ws/src/agv_control_msgs/srv/SignBoard.srv" "agv_control_msgs/signBoardData:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg" NAME_WE)
add_custom_target(_agv_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_control_msgs" "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg" ""
)

get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg" NAME_WE)
add_custom_target(_agv_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_control_msgs" "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg" "agv_control_msgs/arrayData"
)

get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/Removal.srv" NAME_WE)
add_custom_target(_agv_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_control_msgs" "/home/joshua/capstone_ws/src/agv_control_msgs/srv/Removal.srv" ""
)

get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/GetMyPlan.srv" NAME_WE)
add_custom_target(_agv_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_control_msgs" "/home/joshua/capstone_ws/src/agv_control_msgs/srv/GetMyPlan.srv" "agv_control_msgs/arrayData:agv_control_msgs/stringArray:agv_control_msgs/planData:geometry_msgs/Pose:agv_control_msgs/gridData:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg" NAME_WE)
add_custom_target(_agv_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_control_msgs" "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg" ""
)

get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg" NAME_WE)
add_custom_target(_agv_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_control_msgs" "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg" NAME_WE)
add_custom_target(_agv_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_control_msgs" "/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg" "agv_control_msgs/gridData:agv_control_msgs/arrayData:agv_control_msgs/stringArray:std_msgs/Header"
)

get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/CommStatus.srv" NAME_WE)
add_custom_target(_agv_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_control_msgs" "/home/joshua/capstone_ws/src/agv_control_msgs/srv/CommStatus.srv" ""
)

get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stateInfo.msg" NAME_WE)
add_custom_target(_agv_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agv_control_msgs" "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stateInfo.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/vehInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_cpp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_cpp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_cpp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_cpp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_cpp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_cpp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stateInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_control_msgs
)

### Generating Services
_generate_srv_cpp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/SignBoard.srv"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_cpp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/Removal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_cpp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/CommStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_cpp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/GetMyPlan.srv"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_control_msgs
)

### Generating Module File
_generate_module_cpp(agv_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_control_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(agv_control_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(agv_control_msgs_generate_messages agv_control_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/vehInfo.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_cpp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/SignBoard.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_cpp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_cpp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_cpp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/Removal.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_cpp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/GetMyPlan.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_cpp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_cpp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_cpp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_cpp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/CommStatus.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_cpp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stateInfo.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_cpp _agv_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agv_control_msgs_gencpp)
add_dependencies(agv_control_msgs_gencpp agv_control_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agv_control_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/vehInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_eus(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_eus(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_eus(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_eus(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_eus(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_eus(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stateInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_control_msgs
)

### Generating Services
_generate_srv_eus(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/SignBoard.srv"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_eus(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/Removal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_eus(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/CommStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_eus(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/GetMyPlan.srv"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_control_msgs
)

### Generating Module File
_generate_module_eus(agv_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_control_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(agv_control_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(agv_control_msgs_generate_messages agv_control_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/vehInfo.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_eus _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/SignBoard.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_eus _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_eus _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_eus _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/Removal.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_eus _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/GetMyPlan.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_eus _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_eus _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_eus _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_eus _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/CommStatus.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_eus _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stateInfo.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_eus _agv_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agv_control_msgs_geneus)
add_dependencies(agv_control_msgs_geneus agv_control_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agv_control_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/vehInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_lisp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_lisp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_lisp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_lisp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_lisp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_lisp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stateInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_control_msgs
)

### Generating Services
_generate_srv_lisp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/SignBoard.srv"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_lisp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/Removal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_lisp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/CommStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_lisp(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/GetMyPlan.srv"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_control_msgs
)

### Generating Module File
_generate_module_lisp(agv_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_control_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(agv_control_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(agv_control_msgs_generate_messages agv_control_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/vehInfo.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_lisp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/SignBoard.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_lisp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_lisp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_lisp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/Removal.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_lisp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/GetMyPlan.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_lisp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_lisp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_lisp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_lisp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/CommStatus.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_lisp _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stateInfo.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_lisp _agv_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agv_control_msgs_genlisp)
add_dependencies(agv_control_msgs_genlisp agv_control_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agv_control_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/vehInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_nodejs(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_nodejs(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_nodejs(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_nodejs(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_nodejs(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_nodejs(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stateInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_control_msgs
)

### Generating Services
_generate_srv_nodejs(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/SignBoard.srv"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_nodejs(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/Removal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_nodejs(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/CommStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_nodejs(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/GetMyPlan.srv"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_control_msgs
)

### Generating Module File
_generate_module_nodejs(agv_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_control_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(agv_control_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(agv_control_msgs_generate_messages agv_control_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/vehInfo.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_nodejs _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/SignBoard.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_nodejs _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_nodejs _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_nodejs _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/Removal.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_nodejs _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/GetMyPlan.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_nodejs _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_nodejs _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_nodejs _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_nodejs _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/CommStatus.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_nodejs _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stateInfo.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_nodejs _agv_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agv_control_msgs_gennodejs)
add_dependencies(agv_control_msgs_gennodejs agv_control_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agv_control_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/vehInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_py(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_py(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_py(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_py(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_py(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs
)
_generate_msg_py(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stateInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs
)

### Generating Services
_generate_srv_py(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/SignBoard.srv"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_py(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/Removal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_py(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/CommStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs
)
_generate_srv_py(agv_control_msgs
  "/home/joshua/capstone_ws/src/agv_control_msgs/srv/GetMyPlan.srv"
  "${MSG_I_FLAGS}"
  "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs
)

### Generating Module File
_generate_module_py(agv_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(agv_control_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(agv_control_msgs_generate_messages agv_control_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/vehInfo.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_py _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/SignBoard.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_py _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/arrayData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_py _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/gridData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_py _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/Removal.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_py _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/GetMyPlan.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_py _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stringArray.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_py _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/signBoardData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_py _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/planData.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_py _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/srv/CommStatus.srv" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_py _agv_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/joshua/capstone_ws/src/agv_control_msgs/msg/stateInfo.msg" NAME_WE)
add_dependencies(agv_control_msgs_generate_messages_py _agv_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agv_control_msgs_genpy)
add_dependencies(agv_control_msgs_genpy agv_control_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agv_control_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agv_control_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(agv_control_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(agv_control_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agv_control_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(agv_control_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(agv_control_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agv_control_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(agv_control_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(agv_control_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agv_control_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(agv_control_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(agv_control_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agv_control_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(agv_control_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(agv_control_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
