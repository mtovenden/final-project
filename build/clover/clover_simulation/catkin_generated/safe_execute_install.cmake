execute_process(COMMAND "/home/max/final-project/build/clover/clover_simulation/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/max/final-project/build/clover/clover_simulation/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
