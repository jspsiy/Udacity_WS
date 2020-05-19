# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "capstone: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icapstone:/home/joshua/capstone_ws/src/capstone/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(capstone_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/joshua/capstone_ws/src/capstone/msg/Nodes.msg" NAME_WE)
add_custom_target(_capstone_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "capstone" "/home/joshua/capstone_ws/src/capstone/msg/Nodes.msg" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(capstone
  "/home/joshua/capstone_ws/src/capstone/msg/Nodes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/capstone
)

### Generating Services

### Generating Module File
_generate_module_cpp(capstone
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/capstone
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(capstone_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(capstone_generate_messages capstone_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshua/capstone_ws/src/capstone/msg/Nodes.msg" NAME_WE)
add_dependencies(capstone_generate_messages_cpp _capstone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(capstone_gencpp)
add_dependencies(capstone_gencpp capstone_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS capstone_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(capstone
  "/home/joshua/capstone_ws/src/capstone/msg/Nodes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/capstone
)

### Generating Services

### Generating Module File
_generate_module_eus(capstone
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/capstone
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(capstone_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(capstone_generate_messages capstone_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshua/capstone_ws/src/capstone/msg/Nodes.msg" NAME_WE)
add_dependencies(capstone_generate_messages_eus _capstone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(capstone_geneus)
add_dependencies(capstone_geneus capstone_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS capstone_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(capstone
  "/home/joshua/capstone_ws/src/capstone/msg/Nodes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/capstone
)

### Generating Services

### Generating Module File
_generate_module_lisp(capstone
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/capstone
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(capstone_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(capstone_generate_messages capstone_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshua/capstone_ws/src/capstone/msg/Nodes.msg" NAME_WE)
add_dependencies(capstone_generate_messages_lisp _capstone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(capstone_genlisp)
add_dependencies(capstone_genlisp capstone_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS capstone_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(capstone
  "/home/joshua/capstone_ws/src/capstone/msg/Nodes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/capstone
)

### Generating Services

### Generating Module File
_generate_module_nodejs(capstone
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/capstone
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(capstone_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(capstone_generate_messages capstone_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshua/capstone_ws/src/capstone/msg/Nodes.msg" NAME_WE)
add_dependencies(capstone_generate_messages_nodejs _capstone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(capstone_gennodejs)
add_dependencies(capstone_gennodejs capstone_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS capstone_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(capstone
  "/home/joshua/capstone_ws/src/capstone/msg/Nodes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/capstone
)

### Generating Services

### Generating Module File
_generate_module_py(capstone
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/capstone
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(capstone_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(capstone_generate_messages capstone_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/joshua/capstone_ws/src/capstone/msg/Nodes.msg" NAME_WE)
add_dependencies(capstone_generate_messages_py _capstone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(capstone_genpy)
add_dependencies(capstone_genpy capstone_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS capstone_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/capstone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/capstone
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(capstone_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(capstone_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/capstone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/capstone
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(capstone_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(capstone_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/capstone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/capstone
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(capstone_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(capstone_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/capstone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/capstone
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(capstone_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(capstone_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/capstone)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/capstone\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/capstone
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(capstone_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(capstone_generate_messages_py std_msgs_generate_messages_py)
endif()
