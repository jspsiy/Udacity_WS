# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joshua/capstone_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joshua/capstone_ws/build

# Include any dependencies generated for this target.
include capstone/CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include capstone/CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include capstone/CMakeFiles/test.dir/flags.make

capstone/CMakeFiles/test.dir/src/test.cpp.o: capstone/CMakeFiles/test.dir/flags.make
capstone/CMakeFiles/test.dir/src/test.cpp.o: /home/joshua/capstone_ws/src/capstone/src/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joshua/capstone_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object capstone/CMakeFiles/test.dir/src/test.cpp.o"
	cd /home/joshua/capstone_ws/build/capstone && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/src/test.cpp.o -c /home/joshua/capstone_ws/src/capstone/src/test.cpp

capstone/CMakeFiles/test.dir/src/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/src/test.cpp.i"
	cd /home/joshua/capstone_ws/build/capstone && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joshua/capstone_ws/src/capstone/src/test.cpp > CMakeFiles/test.dir/src/test.cpp.i

capstone/CMakeFiles/test.dir/src/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/src/test.cpp.s"
	cd /home/joshua/capstone_ws/build/capstone && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joshua/capstone_ws/src/capstone/src/test.cpp -o CMakeFiles/test.dir/src/test.cpp.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/src/test.cpp.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

/home/joshua/capstone_ws/devel/lib/capstone/test: capstone/CMakeFiles/test.dir/src/test.cpp.o
/home/joshua/capstone_ws/devel/lib/capstone/test: capstone/CMakeFiles/test.dir/build.make
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/libeigen_conversions.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/liborocos-kdl.so.1.4.0
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/libtf.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/libtf2_ros.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/libactionlib.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/libmessage_filters.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/libroscpp.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/libtf2.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/librosconsole.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/librostime.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /opt/ros/melodic/lib/libcpp_common.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/joshua/capstone_ws/devel/lib/capstone/test: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/joshua/capstone_ws/devel/lib/capstone/test: capstone/CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joshua/capstone_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/joshua/capstone_ws/devel/lib/capstone/test"
	cd /home/joshua/capstone_ws/build/capstone && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
capstone/CMakeFiles/test.dir/build: /home/joshua/capstone_ws/devel/lib/capstone/test

.PHONY : capstone/CMakeFiles/test.dir/build

capstone/CMakeFiles/test.dir/clean:
	cd /home/joshua/capstone_ws/build/capstone && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : capstone/CMakeFiles/test.dir/clean

capstone/CMakeFiles/test.dir/depend:
	cd /home/joshua/capstone_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joshua/capstone_ws/src /home/joshua/capstone_ws/src/capstone /home/joshua/capstone_ws/build /home/joshua/capstone_ws/build/capstone /home/joshua/capstone_ws/build/capstone/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : capstone/CMakeFiles/test.dir/depend

