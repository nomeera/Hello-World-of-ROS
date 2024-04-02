# Install script for directory: /media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/src/sum_pkg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sum_pkg/srv" TYPE FILE FILES "/media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/src/sum_pkg/srv/sum.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sum_pkg/cmake" TYPE FILE FILES "/media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/build/sum_pkg/catkin_generated/installspace/sum_pkg-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/devel/include/sum_pkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/devel/share/roseus/ros/sum_pkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/devel/share/common-lisp/ros/sum_pkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/devel/share/gennodejs/ros/sum_pkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/devel/lib/python3/dist-packages/sum_pkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/devel/lib/python3/dist-packages/sum_pkg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/build/sum_pkg/catkin_generated/installspace/sum_pkg.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sum_pkg/cmake" TYPE FILE FILES "/media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/build/sum_pkg/catkin_generated/installspace/sum_pkg-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sum_pkg/cmake" TYPE FILE FILES
    "/media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/build/sum_pkg/catkin_generated/installspace/sum_pkgConfig.cmake"
    "/media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/build/sum_pkg/catkin_generated/installspace/sum_pkgConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sum_pkg" TYPE FILE FILES "/media/nomeer/NoMeEr/NoMeEr/Robotics-Software/Khaled_Gabr/Practice/Autonomous-Robotics-Course-2/Task-3/task3_ws/src/sum_pkg/package.xml")
endif()

