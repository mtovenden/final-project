# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "clover: 1 messages, 12 services")

set(MSG_I_FLAGS "-Iclover:/home/max/final-project/src/clover/clover/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(clover_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/max/final-project/src/clover/clover/msg/State.msg" NAME_WE)
add_custom_target(_clover_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clover" "/home/max/final-project/src/clover/clover/msg/State.msg" ""
)

get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/GetTelemetry.srv" NAME_WE)
add_custom_target(_clover_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clover" "/home/max/final-project/src/clover/clover/srv/GetTelemetry.srv" ""
)

get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/Navigate.srv" NAME_WE)
add_custom_target(_clover_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clover" "/home/max/final-project/src/clover/clover/srv/Navigate.srv" ""
)

get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/NavigateGlobal.srv" NAME_WE)
add_custom_target(_clover_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clover" "/home/max/final-project/src/clover/clover/srv/NavigateGlobal.srv" ""
)

get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetAltitude.srv" NAME_WE)
add_custom_target(_clover_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clover" "/home/max/final-project/src/clover/clover/srv/SetAltitude.srv" ""
)

get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetYaw.srv" NAME_WE)
add_custom_target(_clover_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clover" "/home/max/final-project/src/clover/clover/srv/SetYaw.srv" ""
)

get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetYawRate.srv" NAME_WE)
add_custom_target(_clover_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clover" "/home/max/final-project/src/clover/clover/srv/SetYawRate.srv" ""
)

get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetPosition.srv" NAME_WE)
add_custom_target(_clover_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clover" "/home/max/final-project/src/clover/clover/srv/SetPosition.srv" ""
)

get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetVelocity.srv" NAME_WE)
add_custom_target(_clover_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clover" "/home/max/final-project/src/clover/clover/srv/SetVelocity.srv" ""
)

get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetAttitude.srv" NAME_WE)
add_custom_target(_clover_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clover" "/home/max/final-project/src/clover/clover/srv/SetAttitude.srv" ""
)

get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetRates.srv" NAME_WE)
add_custom_target(_clover_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clover" "/home/max/final-project/src/clover/clover/srv/SetRates.srv" ""
)

get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetLEDEffect.srv" NAME_WE)
add_custom_target(_clover_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clover" "/home/max/final-project/src/clover/clover/srv/SetLEDEffect.srv" ""
)

get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/Execute.srv" NAME_WE)
add_custom_target(_clover_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clover" "/home/max/final-project/src/clover/clover/srv/Execute.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(clover
  "/home/max/final-project/src/clover/clover/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
)

### Generating Services
_generate_srv_cpp(clover
  "/home/max/final-project/src/clover/clover/srv/GetTelemetry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
)
_generate_srv_cpp(clover
  "/home/max/final-project/src/clover/clover/srv/Navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
)
_generate_srv_cpp(clover
  "/home/max/final-project/src/clover/clover/srv/NavigateGlobal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
)
_generate_srv_cpp(clover
  "/home/max/final-project/src/clover/clover/srv/SetAltitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
)
_generate_srv_cpp(clover
  "/home/max/final-project/src/clover/clover/srv/SetYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
)
_generate_srv_cpp(clover
  "/home/max/final-project/src/clover/clover/srv/SetYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
)
_generate_srv_cpp(clover
  "/home/max/final-project/src/clover/clover/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
)
_generate_srv_cpp(clover
  "/home/max/final-project/src/clover/clover/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
)
_generate_srv_cpp(clover
  "/home/max/final-project/src/clover/clover/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
)
_generate_srv_cpp(clover
  "/home/max/final-project/src/clover/clover/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
)
_generate_srv_cpp(clover
  "/home/max/final-project/src/clover/clover/srv/SetLEDEffect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
)
_generate_srv_cpp(clover
  "/home/max/final-project/src/clover/clover/srv/Execute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
)

### Generating Module File
_generate_module_cpp(clover
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(clover_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(clover_generate_messages clover_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/max/final-project/src/clover/clover/msg/State.msg" NAME_WE)
add_dependencies(clover_generate_messages_cpp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/GetTelemetry.srv" NAME_WE)
add_dependencies(clover_generate_messages_cpp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/Navigate.srv" NAME_WE)
add_dependencies(clover_generate_messages_cpp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/NavigateGlobal.srv" NAME_WE)
add_dependencies(clover_generate_messages_cpp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetAltitude.srv" NAME_WE)
add_dependencies(clover_generate_messages_cpp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetYaw.srv" NAME_WE)
add_dependencies(clover_generate_messages_cpp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetYawRate.srv" NAME_WE)
add_dependencies(clover_generate_messages_cpp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetPosition.srv" NAME_WE)
add_dependencies(clover_generate_messages_cpp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetVelocity.srv" NAME_WE)
add_dependencies(clover_generate_messages_cpp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetAttitude.srv" NAME_WE)
add_dependencies(clover_generate_messages_cpp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetRates.srv" NAME_WE)
add_dependencies(clover_generate_messages_cpp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetLEDEffect.srv" NAME_WE)
add_dependencies(clover_generate_messages_cpp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/Execute.srv" NAME_WE)
add_dependencies(clover_generate_messages_cpp _clover_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clover_gencpp)
add_dependencies(clover_gencpp clover_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clover_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(clover
  "/home/max/final-project/src/clover/clover/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
)

### Generating Services
_generate_srv_eus(clover
  "/home/max/final-project/src/clover/clover/srv/GetTelemetry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
)
_generate_srv_eus(clover
  "/home/max/final-project/src/clover/clover/srv/Navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
)
_generate_srv_eus(clover
  "/home/max/final-project/src/clover/clover/srv/NavigateGlobal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
)
_generate_srv_eus(clover
  "/home/max/final-project/src/clover/clover/srv/SetAltitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
)
_generate_srv_eus(clover
  "/home/max/final-project/src/clover/clover/srv/SetYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
)
_generate_srv_eus(clover
  "/home/max/final-project/src/clover/clover/srv/SetYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
)
_generate_srv_eus(clover
  "/home/max/final-project/src/clover/clover/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
)
_generate_srv_eus(clover
  "/home/max/final-project/src/clover/clover/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
)
_generate_srv_eus(clover
  "/home/max/final-project/src/clover/clover/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
)
_generate_srv_eus(clover
  "/home/max/final-project/src/clover/clover/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
)
_generate_srv_eus(clover
  "/home/max/final-project/src/clover/clover/srv/SetLEDEffect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
)
_generate_srv_eus(clover
  "/home/max/final-project/src/clover/clover/srv/Execute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
)

### Generating Module File
_generate_module_eus(clover
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(clover_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(clover_generate_messages clover_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/max/final-project/src/clover/clover/msg/State.msg" NAME_WE)
add_dependencies(clover_generate_messages_eus _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/GetTelemetry.srv" NAME_WE)
add_dependencies(clover_generate_messages_eus _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/Navigate.srv" NAME_WE)
add_dependencies(clover_generate_messages_eus _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/NavigateGlobal.srv" NAME_WE)
add_dependencies(clover_generate_messages_eus _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetAltitude.srv" NAME_WE)
add_dependencies(clover_generate_messages_eus _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetYaw.srv" NAME_WE)
add_dependencies(clover_generate_messages_eus _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetYawRate.srv" NAME_WE)
add_dependencies(clover_generate_messages_eus _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetPosition.srv" NAME_WE)
add_dependencies(clover_generate_messages_eus _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetVelocity.srv" NAME_WE)
add_dependencies(clover_generate_messages_eus _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetAttitude.srv" NAME_WE)
add_dependencies(clover_generate_messages_eus _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetRates.srv" NAME_WE)
add_dependencies(clover_generate_messages_eus _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetLEDEffect.srv" NAME_WE)
add_dependencies(clover_generate_messages_eus _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/Execute.srv" NAME_WE)
add_dependencies(clover_generate_messages_eus _clover_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clover_geneus)
add_dependencies(clover_geneus clover_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clover_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(clover
  "/home/max/final-project/src/clover/clover/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
)

### Generating Services
_generate_srv_lisp(clover
  "/home/max/final-project/src/clover/clover/srv/GetTelemetry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
)
_generate_srv_lisp(clover
  "/home/max/final-project/src/clover/clover/srv/Navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
)
_generate_srv_lisp(clover
  "/home/max/final-project/src/clover/clover/srv/NavigateGlobal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
)
_generate_srv_lisp(clover
  "/home/max/final-project/src/clover/clover/srv/SetAltitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
)
_generate_srv_lisp(clover
  "/home/max/final-project/src/clover/clover/srv/SetYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
)
_generate_srv_lisp(clover
  "/home/max/final-project/src/clover/clover/srv/SetYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
)
_generate_srv_lisp(clover
  "/home/max/final-project/src/clover/clover/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
)
_generate_srv_lisp(clover
  "/home/max/final-project/src/clover/clover/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
)
_generate_srv_lisp(clover
  "/home/max/final-project/src/clover/clover/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
)
_generate_srv_lisp(clover
  "/home/max/final-project/src/clover/clover/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
)
_generate_srv_lisp(clover
  "/home/max/final-project/src/clover/clover/srv/SetLEDEffect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
)
_generate_srv_lisp(clover
  "/home/max/final-project/src/clover/clover/srv/Execute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
)

### Generating Module File
_generate_module_lisp(clover
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(clover_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(clover_generate_messages clover_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/max/final-project/src/clover/clover/msg/State.msg" NAME_WE)
add_dependencies(clover_generate_messages_lisp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/GetTelemetry.srv" NAME_WE)
add_dependencies(clover_generate_messages_lisp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/Navigate.srv" NAME_WE)
add_dependencies(clover_generate_messages_lisp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/NavigateGlobal.srv" NAME_WE)
add_dependencies(clover_generate_messages_lisp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetAltitude.srv" NAME_WE)
add_dependencies(clover_generate_messages_lisp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetYaw.srv" NAME_WE)
add_dependencies(clover_generate_messages_lisp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetYawRate.srv" NAME_WE)
add_dependencies(clover_generate_messages_lisp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetPosition.srv" NAME_WE)
add_dependencies(clover_generate_messages_lisp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetVelocity.srv" NAME_WE)
add_dependencies(clover_generate_messages_lisp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetAttitude.srv" NAME_WE)
add_dependencies(clover_generate_messages_lisp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetRates.srv" NAME_WE)
add_dependencies(clover_generate_messages_lisp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetLEDEffect.srv" NAME_WE)
add_dependencies(clover_generate_messages_lisp _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/Execute.srv" NAME_WE)
add_dependencies(clover_generate_messages_lisp _clover_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clover_genlisp)
add_dependencies(clover_genlisp clover_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clover_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(clover
  "/home/max/final-project/src/clover/clover/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
)

### Generating Services
_generate_srv_nodejs(clover
  "/home/max/final-project/src/clover/clover/srv/GetTelemetry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
)
_generate_srv_nodejs(clover
  "/home/max/final-project/src/clover/clover/srv/Navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
)
_generate_srv_nodejs(clover
  "/home/max/final-project/src/clover/clover/srv/NavigateGlobal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
)
_generate_srv_nodejs(clover
  "/home/max/final-project/src/clover/clover/srv/SetAltitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
)
_generate_srv_nodejs(clover
  "/home/max/final-project/src/clover/clover/srv/SetYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
)
_generate_srv_nodejs(clover
  "/home/max/final-project/src/clover/clover/srv/SetYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
)
_generate_srv_nodejs(clover
  "/home/max/final-project/src/clover/clover/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
)
_generate_srv_nodejs(clover
  "/home/max/final-project/src/clover/clover/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
)
_generate_srv_nodejs(clover
  "/home/max/final-project/src/clover/clover/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
)
_generate_srv_nodejs(clover
  "/home/max/final-project/src/clover/clover/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
)
_generate_srv_nodejs(clover
  "/home/max/final-project/src/clover/clover/srv/SetLEDEffect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
)
_generate_srv_nodejs(clover
  "/home/max/final-project/src/clover/clover/srv/Execute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
)

### Generating Module File
_generate_module_nodejs(clover
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(clover_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(clover_generate_messages clover_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/max/final-project/src/clover/clover/msg/State.msg" NAME_WE)
add_dependencies(clover_generate_messages_nodejs _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/GetTelemetry.srv" NAME_WE)
add_dependencies(clover_generate_messages_nodejs _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/Navigate.srv" NAME_WE)
add_dependencies(clover_generate_messages_nodejs _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/NavigateGlobal.srv" NAME_WE)
add_dependencies(clover_generate_messages_nodejs _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetAltitude.srv" NAME_WE)
add_dependencies(clover_generate_messages_nodejs _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetYaw.srv" NAME_WE)
add_dependencies(clover_generate_messages_nodejs _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetYawRate.srv" NAME_WE)
add_dependencies(clover_generate_messages_nodejs _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetPosition.srv" NAME_WE)
add_dependencies(clover_generate_messages_nodejs _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetVelocity.srv" NAME_WE)
add_dependencies(clover_generate_messages_nodejs _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetAttitude.srv" NAME_WE)
add_dependencies(clover_generate_messages_nodejs _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetRates.srv" NAME_WE)
add_dependencies(clover_generate_messages_nodejs _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetLEDEffect.srv" NAME_WE)
add_dependencies(clover_generate_messages_nodejs _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/Execute.srv" NAME_WE)
add_dependencies(clover_generate_messages_nodejs _clover_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clover_gennodejs)
add_dependencies(clover_gennodejs clover_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clover_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(clover
  "/home/max/final-project/src/clover/clover/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
)

### Generating Services
_generate_srv_py(clover
  "/home/max/final-project/src/clover/clover/srv/GetTelemetry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
)
_generate_srv_py(clover
  "/home/max/final-project/src/clover/clover/srv/Navigate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
)
_generate_srv_py(clover
  "/home/max/final-project/src/clover/clover/srv/NavigateGlobal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
)
_generate_srv_py(clover
  "/home/max/final-project/src/clover/clover/srv/SetAltitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
)
_generate_srv_py(clover
  "/home/max/final-project/src/clover/clover/srv/SetYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
)
_generate_srv_py(clover
  "/home/max/final-project/src/clover/clover/srv/SetYawRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
)
_generate_srv_py(clover
  "/home/max/final-project/src/clover/clover/srv/SetPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
)
_generate_srv_py(clover
  "/home/max/final-project/src/clover/clover/srv/SetVelocity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
)
_generate_srv_py(clover
  "/home/max/final-project/src/clover/clover/srv/SetAttitude.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
)
_generate_srv_py(clover
  "/home/max/final-project/src/clover/clover/srv/SetRates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
)
_generate_srv_py(clover
  "/home/max/final-project/src/clover/clover/srv/SetLEDEffect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
)
_generate_srv_py(clover
  "/home/max/final-project/src/clover/clover/srv/Execute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
)

### Generating Module File
_generate_module_py(clover
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(clover_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(clover_generate_messages clover_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/max/final-project/src/clover/clover/msg/State.msg" NAME_WE)
add_dependencies(clover_generate_messages_py _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/GetTelemetry.srv" NAME_WE)
add_dependencies(clover_generate_messages_py _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/Navigate.srv" NAME_WE)
add_dependencies(clover_generate_messages_py _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/NavigateGlobal.srv" NAME_WE)
add_dependencies(clover_generate_messages_py _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetAltitude.srv" NAME_WE)
add_dependencies(clover_generate_messages_py _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetYaw.srv" NAME_WE)
add_dependencies(clover_generate_messages_py _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetYawRate.srv" NAME_WE)
add_dependencies(clover_generate_messages_py _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetPosition.srv" NAME_WE)
add_dependencies(clover_generate_messages_py _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetVelocity.srv" NAME_WE)
add_dependencies(clover_generate_messages_py _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetAttitude.srv" NAME_WE)
add_dependencies(clover_generate_messages_py _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetRates.srv" NAME_WE)
add_dependencies(clover_generate_messages_py _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/SetLEDEffect.srv" NAME_WE)
add_dependencies(clover_generate_messages_py _clover_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/max/final-project/src/clover/clover/srv/Execute.srv" NAME_WE)
add_dependencies(clover_generate_messages_py _clover_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clover_genpy)
add_dependencies(clover_genpy clover_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clover_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clover
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(clover_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clover
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(clover_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clover
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(clover_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clover
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(clover_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clover
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(clover_generate_messages_py std_msgs_generate_messages_py)
endif()
