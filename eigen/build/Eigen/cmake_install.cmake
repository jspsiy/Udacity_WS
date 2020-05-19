# Install script for directory: /home/joshua/eigen/Eigen

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "/home/joshua/eigen/Eigen/OrderingMethods"
    "/home/joshua/eigen/Eigen/CholmodSupport"
    "/home/joshua/eigen/Eigen/Geometry"
    "/home/joshua/eigen/Eigen/PardisoSupport"
    "/home/joshua/eigen/Eigen/MetisSupport"
    "/home/joshua/eigen/Eigen/Dense"
    "/home/joshua/eigen/Eigen/Sparse"
    "/home/joshua/eigen/Eigen/StdList"
    "/home/joshua/eigen/Eigen/IterativeLinearSolvers"
    "/home/joshua/eigen/Eigen/QR"
    "/home/joshua/eigen/Eigen/Householder"
    "/home/joshua/eigen/Eigen/UmfPackSupport"
    "/home/joshua/eigen/Eigen/SparseLU"
    "/home/joshua/eigen/Eigen/LU"
    "/home/joshua/eigen/Eigen/PaStiXSupport"
    "/home/joshua/eigen/Eigen/Cholesky"
    "/home/joshua/eigen/Eigen/Jacobi"
    "/home/joshua/eigen/Eigen/SVD"
    "/home/joshua/eigen/Eigen/SparseCholesky"
    "/home/joshua/eigen/Eigen/Eigenvalues"
    "/home/joshua/eigen/Eigen/SparseQR"
    "/home/joshua/eigen/Eigen/SuperLUSupport"
    "/home/joshua/eigen/Eigen/SPQRSupport"
    "/home/joshua/eigen/Eigen/StdVector"
    "/home/joshua/eigen/Eigen/StdDeque"
    "/home/joshua/eigen/Eigen/SparseCore"
    "/home/joshua/eigen/Eigen/Core"
    "/home/joshua/eigen/Eigen/Eigen"
    "/home/joshua/eigen/Eigen/QtAlignedMalloc"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE DIRECTORY FILES "/home/joshua/eigen/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

