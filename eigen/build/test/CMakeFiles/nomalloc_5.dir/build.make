# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joshua/eigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joshua/eigen/build

# Include any dependencies generated for this target.
include test/CMakeFiles/nomalloc_5.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/nomalloc_5.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/nomalloc_5.dir/flags.make

test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o: test/CMakeFiles/nomalloc_5.dir/flags.make
test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o: ../test/nomalloc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joshua/eigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o"
	cd /home/joshua/eigen/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o -c /home/joshua/eigen/test/nomalloc.cpp

test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nomalloc_5.dir/nomalloc.cpp.i"
	cd /home/joshua/eigen/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joshua/eigen/test/nomalloc.cpp > CMakeFiles/nomalloc_5.dir/nomalloc.cpp.i

test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nomalloc_5.dir/nomalloc.cpp.s"
	cd /home/joshua/eigen/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joshua/eigen/test/nomalloc.cpp -o CMakeFiles/nomalloc_5.dir/nomalloc.cpp.s

test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o.requires:

.PHONY : test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o.requires

test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o.provides: test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/nomalloc_5.dir/build.make test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o.provides.build
.PHONY : test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o.provides

test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o.provides.build: test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o


# Object files for target nomalloc_5
nomalloc_5_OBJECTS = \
"CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o"

# External object files for target nomalloc_5
nomalloc_5_EXTERNAL_OBJECTS =

test/nomalloc_5: test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o
test/nomalloc_5: test/CMakeFiles/nomalloc_5.dir/build.make
test/nomalloc_5: test/CMakeFiles/nomalloc_5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joshua/eigen/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable nomalloc_5"
	cd /home/joshua/eigen/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nomalloc_5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/nomalloc_5.dir/build: test/nomalloc_5

.PHONY : test/CMakeFiles/nomalloc_5.dir/build

test/CMakeFiles/nomalloc_5.dir/requires: test/CMakeFiles/nomalloc_5.dir/nomalloc.cpp.o.requires

.PHONY : test/CMakeFiles/nomalloc_5.dir/requires

test/CMakeFiles/nomalloc_5.dir/clean:
	cd /home/joshua/eigen/build/test && $(CMAKE_COMMAND) -P CMakeFiles/nomalloc_5.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/nomalloc_5.dir/clean

test/CMakeFiles/nomalloc_5.dir/depend:
	cd /home/joshua/eigen/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joshua/eigen /home/joshua/eigen/test /home/joshua/eigen/build /home/joshua/eigen/build/test /home/joshua/eigen/build/test/CMakeFiles/nomalloc_5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/nomalloc_5.dir/depend

