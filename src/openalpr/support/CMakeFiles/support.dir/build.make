# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/ascc/openalpr-master/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ascc/openalpr-master/src

# Include any dependencies generated for this target.
include openalpr/support/CMakeFiles/support.dir/depend.make

# Include the progress variables for this target.
include openalpr/support/CMakeFiles/support.dir/progress.make

# Include the compile flags for this target's objects.
include openalpr/support/CMakeFiles/support.dir/flags.make

openalpr/support/CMakeFiles/support.dir/filesystem.cpp.o: openalpr/support/CMakeFiles/support.dir/flags.make
openalpr/support/CMakeFiles/support.dir/filesystem.cpp.o: openalpr/support/filesystem.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ascc/openalpr-master/src/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object openalpr/support/CMakeFiles/support.dir/filesystem.cpp.o"
	cd /home/ascc/openalpr-master/src/openalpr/support && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/support.dir/filesystem.cpp.o -c /home/ascc/openalpr-master/src/openalpr/support/filesystem.cpp

openalpr/support/CMakeFiles/support.dir/filesystem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/support.dir/filesystem.cpp.i"
	cd /home/ascc/openalpr-master/src/openalpr/support && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ascc/openalpr-master/src/openalpr/support/filesystem.cpp > CMakeFiles/support.dir/filesystem.cpp.i

openalpr/support/CMakeFiles/support.dir/filesystem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/support.dir/filesystem.cpp.s"
	cd /home/ascc/openalpr-master/src/openalpr/support && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ascc/openalpr-master/src/openalpr/support/filesystem.cpp -o CMakeFiles/support.dir/filesystem.cpp.s

openalpr/support/CMakeFiles/support.dir/filesystem.cpp.o.requires:
.PHONY : openalpr/support/CMakeFiles/support.dir/filesystem.cpp.o.requires

openalpr/support/CMakeFiles/support.dir/filesystem.cpp.o.provides: openalpr/support/CMakeFiles/support.dir/filesystem.cpp.o.requires
	$(MAKE) -f openalpr/support/CMakeFiles/support.dir/build.make openalpr/support/CMakeFiles/support.dir/filesystem.cpp.o.provides.build
.PHONY : openalpr/support/CMakeFiles/support.dir/filesystem.cpp.o.provides

openalpr/support/CMakeFiles/support.dir/filesystem.cpp.o.provides.build: openalpr/support/CMakeFiles/support.dir/filesystem.cpp.o

openalpr/support/CMakeFiles/support.dir/timing.cpp.o: openalpr/support/CMakeFiles/support.dir/flags.make
openalpr/support/CMakeFiles/support.dir/timing.cpp.o: openalpr/support/timing.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ascc/openalpr-master/src/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object openalpr/support/CMakeFiles/support.dir/timing.cpp.o"
	cd /home/ascc/openalpr-master/src/openalpr/support && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/support.dir/timing.cpp.o -c /home/ascc/openalpr-master/src/openalpr/support/timing.cpp

openalpr/support/CMakeFiles/support.dir/timing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/support.dir/timing.cpp.i"
	cd /home/ascc/openalpr-master/src/openalpr/support && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ascc/openalpr-master/src/openalpr/support/timing.cpp > CMakeFiles/support.dir/timing.cpp.i

openalpr/support/CMakeFiles/support.dir/timing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/support.dir/timing.cpp.s"
	cd /home/ascc/openalpr-master/src/openalpr/support && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ascc/openalpr-master/src/openalpr/support/timing.cpp -o CMakeFiles/support.dir/timing.cpp.s

openalpr/support/CMakeFiles/support.dir/timing.cpp.o.requires:
.PHONY : openalpr/support/CMakeFiles/support.dir/timing.cpp.o.requires

openalpr/support/CMakeFiles/support.dir/timing.cpp.o.provides: openalpr/support/CMakeFiles/support.dir/timing.cpp.o.requires
	$(MAKE) -f openalpr/support/CMakeFiles/support.dir/build.make openalpr/support/CMakeFiles/support.dir/timing.cpp.o.provides.build
.PHONY : openalpr/support/CMakeFiles/support.dir/timing.cpp.o.provides

openalpr/support/CMakeFiles/support.dir/timing.cpp.o.provides.build: openalpr/support/CMakeFiles/support.dir/timing.cpp.o

openalpr/support/CMakeFiles/support.dir/tinythread.cpp.o: openalpr/support/CMakeFiles/support.dir/flags.make
openalpr/support/CMakeFiles/support.dir/tinythread.cpp.o: openalpr/support/tinythread.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ascc/openalpr-master/src/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object openalpr/support/CMakeFiles/support.dir/tinythread.cpp.o"
	cd /home/ascc/openalpr-master/src/openalpr/support && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/support.dir/tinythread.cpp.o -c /home/ascc/openalpr-master/src/openalpr/support/tinythread.cpp

openalpr/support/CMakeFiles/support.dir/tinythread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/support.dir/tinythread.cpp.i"
	cd /home/ascc/openalpr-master/src/openalpr/support && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ascc/openalpr-master/src/openalpr/support/tinythread.cpp > CMakeFiles/support.dir/tinythread.cpp.i

openalpr/support/CMakeFiles/support.dir/tinythread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/support.dir/tinythread.cpp.s"
	cd /home/ascc/openalpr-master/src/openalpr/support && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ascc/openalpr-master/src/openalpr/support/tinythread.cpp -o CMakeFiles/support.dir/tinythread.cpp.s

openalpr/support/CMakeFiles/support.dir/tinythread.cpp.o.requires:
.PHONY : openalpr/support/CMakeFiles/support.dir/tinythread.cpp.o.requires

openalpr/support/CMakeFiles/support.dir/tinythread.cpp.o.provides: openalpr/support/CMakeFiles/support.dir/tinythread.cpp.o.requires
	$(MAKE) -f openalpr/support/CMakeFiles/support.dir/build.make openalpr/support/CMakeFiles/support.dir/tinythread.cpp.o.provides.build
.PHONY : openalpr/support/CMakeFiles/support.dir/tinythread.cpp.o.provides

openalpr/support/CMakeFiles/support.dir/tinythread.cpp.o.provides.build: openalpr/support/CMakeFiles/support.dir/tinythread.cpp.o

openalpr/support/CMakeFiles/support.dir/platform.cpp.o: openalpr/support/CMakeFiles/support.dir/flags.make
openalpr/support/CMakeFiles/support.dir/platform.cpp.o: openalpr/support/platform.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ascc/openalpr-master/src/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object openalpr/support/CMakeFiles/support.dir/platform.cpp.o"
	cd /home/ascc/openalpr-master/src/openalpr/support && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/support.dir/platform.cpp.o -c /home/ascc/openalpr-master/src/openalpr/support/platform.cpp

openalpr/support/CMakeFiles/support.dir/platform.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/support.dir/platform.cpp.i"
	cd /home/ascc/openalpr-master/src/openalpr/support && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ascc/openalpr-master/src/openalpr/support/platform.cpp > CMakeFiles/support.dir/platform.cpp.i

openalpr/support/CMakeFiles/support.dir/platform.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/support.dir/platform.cpp.s"
	cd /home/ascc/openalpr-master/src/openalpr/support && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ascc/openalpr-master/src/openalpr/support/platform.cpp -o CMakeFiles/support.dir/platform.cpp.s

openalpr/support/CMakeFiles/support.dir/platform.cpp.o.requires:
.PHONY : openalpr/support/CMakeFiles/support.dir/platform.cpp.o.requires

openalpr/support/CMakeFiles/support.dir/platform.cpp.o.provides: openalpr/support/CMakeFiles/support.dir/platform.cpp.o.requires
	$(MAKE) -f openalpr/support/CMakeFiles/support.dir/build.make openalpr/support/CMakeFiles/support.dir/platform.cpp.o.provides.build
.PHONY : openalpr/support/CMakeFiles/support.dir/platform.cpp.o.provides

openalpr/support/CMakeFiles/support.dir/platform.cpp.o.provides.build: openalpr/support/CMakeFiles/support.dir/platform.cpp.o

# Object files for target support
support_OBJECTS = \
"CMakeFiles/support.dir/filesystem.cpp.o" \
"CMakeFiles/support.dir/timing.cpp.o" \
"CMakeFiles/support.dir/tinythread.cpp.o" \
"CMakeFiles/support.dir/platform.cpp.o"

# External object files for target support
support_EXTERNAL_OBJECTS =

openalpr/support/libsupport.a: openalpr/support/CMakeFiles/support.dir/filesystem.cpp.o
openalpr/support/libsupport.a: openalpr/support/CMakeFiles/support.dir/timing.cpp.o
openalpr/support/libsupport.a: openalpr/support/CMakeFiles/support.dir/tinythread.cpp.o
openalpr/support/libsupport.a: openalpr/support/CMakeFiles/support.dir/platform.cpp.o
openalpr/support/libsupport.a: openalpr/support/CMakeFiles/support.dir/build.make
openalpr/support/libsupport.a: openalpr/support/CMakeFiles/support.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libsupport.a"
	cd /home/ascc/openalpr-master/src/openalpr/support && $(CMAKE_COMMAND) -P CMakeFiles/support.dir/cmake_clean_target.cmake
	cd /home/ascc/openalpr-master/src/openalpr/support && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/support.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
openalpr/support/CMakeFiles/support.dir/build: openalpr/support/libsupport.a
.PHONY : openalpr/support/CMakeFiles/support.dir/build

openalpr/support/CMakeFiles/support.dir/requires: openalpr/support/CMakeFiles/support.dir/filesystem.cpp.o.requires
openalpr/support/CMakeFiles/support.dir/requires: openalpr/support/CMakeFiles/support.dir/timing.cpp.o.requires
openalpr/support/CMakeFiles/support.dir/requires: openalpr/support/CMakeFiles/support.dir/tinythread.cpp.o.requires
openalpr/support/CMakeFiles/support.dir/requires: openalpr/support/CMakeFiles/support.dir/platform.cpp.o.requires
.PHONY : openalpr/support/CMakeFiles/support.dir/requires

openalpr/support/CMakeFiles/support.dir/clean:
	cd /home/ascc/openalpr-master/src/openalpr/support && $(CMAKE_COMMAND) -P CMakeFiles/support.dir/cmake_clean.cmake
.PHONY : openalpr/support/CMakeFiles/support.dir/clean

openalpr/support/CMakeFiles/support.dir/depend:
	cd /home/ascc/openalpr-master/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ascc/openalpr-master/src /home/ascc/openalpr-master/src/openalpr/support /home/ascc/openalpr-master/src /home/ascc/openalpr-master/src/openalpr/support /home/ascc/openalpr-master/src/openalpr/support/CMakeFiles/support.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : openalpr/support/CMakeFiles/support.dir/depend

