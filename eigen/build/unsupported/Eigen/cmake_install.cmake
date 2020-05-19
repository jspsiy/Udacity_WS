# Install script for directory: /home/joshua/eigen/unsupported/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/home/joshua/eigen/unsupported/Eigen/AdolcForward"
    "/home/joshua/eigen/unsupported/Eigen/AlignedVector3"
    "/home/joshua/eigen/unsupported/Eigen/ArpackSupport"
    "/home/joshua/eigen/unsupported/Eigen/AutoDiff"
    "/home/joshua/eigen/unsupported/Eigen/BVH"
    "/home/joshua/eigen/unsupported/Eigen/EulerAngles"
    "/home/joshua/eigen/unsupported/Eigen/FFT"
    "/home/joshua/eigen/unsupported/Eigen/IterativeSolvers"
    "/home/joshua/eigen/unsupported/Eigen/KroneckerProduct"
    "/home/joshua/eigen/unsupported/Eigen/LevenbergMarquardt"
    "/home/joshua/eigen/unsupported/Eigen/MatrixFunctions"
    "/home/joshua/eigen/unsupported/Eigen/MoreVectorization"
    "/home/joshua/eigen/unsupported/Eigen/MPRealSupport"
    "/home/joshua/eigen/unsupported/Eigen/NonLinearOptimization"
    "/home/joshua/eigen/unsupported/Eigen/NumericalDiff"
    "/home/joshua/eigen/unsupported/Eigen/OpenGLSupport"
    "/home/joshua/eigen/unsupported/Eigen/Polynomials"
    "/home/joshua/eigen/unsupported/Eigen/Skyline"
    "/home/joshua/eigen/unsupported/Eigen/SparseExtra"
    "/home/joshua/eigen/unsupported/Eigen/SpecialFunctions"
    "/home/joshua/eigen/unsupported/Eigen/Splines"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "/home/joshua/eigen/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/joshua/eigen/build/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()

