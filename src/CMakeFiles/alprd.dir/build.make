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
include CMakeFiles/alprd.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/alprd.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/alprd.dir/flags.make

CMakeFiles/alprd.dir/daemon.cpp.o: CMakeFiles/alprd.dir/flags.make
CMakeFiles/alprd.dir/daemon.cpp.o: daemon.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ascc/openalpr-master/src/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/alprd.dir/daemon.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/alprd.dir/daemon.cpp.o -c /home/ascc/openalpr-master/src/daemon.cpp

CMakeFiles/alprd.dir/daemon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alprd.dir/daemon.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ascc/openalpr-master/src/daemon.cpp > CMakeFiles/alprd.dir/daemon.cpp.i

CMakeFiles/alprd.dir/daemon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alprd.dir/daemon.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ascc/openalpr-master/src/daemon.cpp -o CMakeFiles/alprd.dir/daemon.cpp.s

CMakeFiles/alprd.dir/daemon.cpp.o.requires:
.PHONY : CMakeFiles/alprd.dir/daemon.cpp.o.requires

CMakeFiles/alprd.dir/daemon.cpp.o.provides: CMakeFiles/alprd.dir/daemon.cpp.o.requires
	$(MAKE) -f CMakeFiles/alprd.dir/build.make CMakeFiles/alprd.dir/daemon.cpp.o.provides.build
.PHONY : CMakeFiles/alprd.dir/daemon.cpp.o.provides

CMakeFiles/alprd.dir/daemon.cpp.o.provides.build: CMakeFiles/alprd.dir/daemon.cpp.o

CMakeFiles/alprd.dir/daemon/beanstalk.c.o: CMakeFiles/alprd.dir/flags.make
CMakeFiles/alprd.dir/daemon/beanstalk.c.o: daemon/beanstalk.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ascc/openalpr-master/src/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/alprd.dir/daemon/beanstalk.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/alprd.dir/daemon/beanstalk.c.o   -c /home/ascc/openalpr-master/src/daemon/beanstalk.c

CMakeFiles/alprd.dir/daemon/beanstalk.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/alprd.dir/daemon/beanstalk.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ascc/openalpr-master/src/daemon/beanstalk.c > CMakeFiles/alprd.dir/daemon/beanstalk.c.i

CMakeFiles/alprd.dir/daemon/beanstalk.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/alprd.dir/daemon/beanstalk.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ascc/openalpr-master/src/daemon/beanstalk.c -o CMakeFiles/alprd.dir/daemon/beanstalk.c.s

CMakeFiles/alprd.dir/daemon/beanstalk.c.o.requires:
.PHONY : CMakeFiles/alprd.dir/daemon/beanstalk.c.o.requires

CMakeFiles/alprd.dir/daemon/beanstalk.c.o.provides: CMakeFiles/alprd.dir/daemon/beanstalk.c.o.requires
	$(MAKE) -f CMakeFiles/alprd.dir/build.make CMakeFiles/alprd.dir/daemon/beanstalk.c.o.provides.build
.PHONY : CMakeFiles/alprd.dir/daemon/beanstalk.c.o.provides

CMakeFiles/alprd.dir/daemon/beanstalk.c.o.provides.build: CMakeFiles/alprd.dir/daemon/beanstalk.c.o

CMakeFiles/alprd.dir/daemon/beanstalk.cc.o: CMakeFiles/alprd.dir/flags.make
CMakeFiles/alprd.dir/daemon/beanstalk.cc.o: daemon/beanstalk.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ascc/openalpr-master/src/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/alprd.dir/daemon/beanstalk.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/alprd.dir/daemon/beanstalk.cc.o -c /home/ascc/openalpr-master/src/daemon/beanstalk.cc

CMakeFiles/alprd.dir/daemon/beanstalk.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alprd.dir/daemon/beanstalk.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ascc/openalpr-master/src/daemon/beanstalk.cc > CMakeFiles/alprd.dir/daemon/beanstalk.cc.i

CMakeFiles/alprd.dir/daemon/beanstalk.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alprd.dir/daemon/beanstalk.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ascc/openalpr-master/src/daemon/beanstalk.cc -o CMakeFiles/alprd.dir/daemon/beanstalk.cc.s

CMakeFiles/alprd.dir/daemon/beanstalk.cc.o.requires:
.PHONY : CMakeFiles/alprd.dir/daemon/beanstalk.cc.o.requires

CMakeFiles/alprd.dir/daemon/beanstalk.cc.o.provides: CMakeFiles/alprd.dir/daemon/beanstalk.cc.o.requires
	$(MAKE) -f CMakeFiles/alprd.dir/build.make CMakeFiles/alprd.dir/daemon/beanstalk.cc.o.provides.build
.PHONY : CMakeFiles/alprd.dir/daemon/beanstalk.cc.o.provides

CMakeFiles/alprd.dir/daemon/beanstalk.cc.o.provides.build: CMakeFiles/alprd.dir/daemon/beanstalk.cc.o

# Object files for target alprd
alprd_OBJECTS = \
"CMakeFiles/alprd.dir/daemon.cpp.o" \
"CMakeFiles/alprd.dir/daemon/beanstalk.c.o" \
"CMakeFiles/alprd.dir/daemon/beanstalk.cc.o"

# External object files for target alprd
alprd_EXTERNAL_OBJECTS =

alprd: CMakeFiles/alprd.dir/daemon.cpp.o
alprd: CMakeFiles/alprd.dir/daemon/beanstalk.c.o
alprd: CMakeFiles/alprd.dir/daemon/beanstalk.cc.o
alprd: CMakeFiles/alprd.dir/build.make
alprd: openalpr/libopenalpr.so.2
alprd: openalpr/support/libsupport.a
alprd: video/libvideo.a
alprd: /usr/local/lib/libopencv_videostab.so.3.1.0
alprd: /usr/local/lib/libopencv_videoio.so.3.1.0
alprd: /usr/local/lib/libopencv_video.so.3.1.0
alprd: /usr/local/lib/libopencv_superres.so.3.1.0
alprd: /usr/local/lib/libopencv_stitching.so.3.1.0
alprd: /usr/local/lib/libopencv_shape.so.3.1.0
alprd: /usr/local/lib/libopencv_photo.so.3.1.0
alprd: /usr/local/lib/libopencv_objdetect.so.3.1.0
alprd: /usr/local/lib/libopencv_ml.so.3.1.0
alprd: /usr/local/lib/libopencv_imgproc.so.3.1.0
alprd: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
alprd: /usr/local/lib/libopencv_highgui.so.3.1.0
alprd: /usr/local/lib/libopencv_flann.so.3.1.0
alprd: /usr/local/lib/libopencv_features2d.so.3.1.0
alprd: /usr/local/lib/libopencv_core.so.3.1.0
alprd: /usr/local/lib/libopencv_calib3d.so.3.1.0
alprd: /usr/local/lib/libtesseract.so
alprd: /usr/local/lib/liblept.so
alprd: /usr/local/lib/libtesseract.so
alprd: /usr/local/lib/liblept.so
alprd: /usr/local/lib/libopencv_video.so.3.1.0
alprd: /usr/local/lib/libopencv_features2d.so.3.1.0
alprd: /usr/local/lib/libopencv_ml.so.3.1.0
alprd: /usr/local/lib/libopencv_highgui.so.3.1.0
alprd: /usr/local/lib/libopencv_videoio.so.3.1.0
alprd: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
alprd: /usr/local/lib/libopencv_imgproc.so.3.1.0
alprd: /usr/local/lib/libopencv_flann.so.3.1.0
alprd: /usr/local/lib/libopencv_core.so.3.1.0
alprd: openalpr/support/libsupport.a
alprd: CMakeFiles/alprd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable alprd"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/alprd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/alprd.dir/build: alprd
.PHONY : CMakeFiles/alprd.dir/build

# Object files for target alprd
alprd_OBJECTS = \
"CMakeFiles/alprd.dir/daemon.cpp.o" \
"CMakeFiles/alprd.dir/daemon/beanstalk.c.o" \
"CMakeFiles/alprd.dir/daemon/beanstalk.cc.o"

# External object files for target alprd
alprd_EXTERNAL_OBJECTS =

CMakeFiles/CMakeRelink.dir/alprd: CMakeFiles/alprd.dir/daemon.cpp.o
CMakeFiles/CMakeRelink.dir/alprd: CMakeFiles/alprd.dir/daemon/beanstalk.c.o
CMakeFiles/CMakeRelink.dir/alprd: CMakeFiles/alprd.dir/daemon/beanstalk.cc.o
CMakeFiles/CMakeRelink.dir/alprd: CMakeFiles/alprd.dir/build.make
CMakeFiles/CMakeRelink.dir/alprd: openalpr/libopenalpr.so.2
CMakeFiles/CMakeRelink.dir/alprd: openalpr/support/libsupport.a
CMakeFiles/CMakeRelink.dir/alprd: video/libvideo.a
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_videostab.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_videoio.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_video.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_superres.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_stitching.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_shape.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_photo.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_objdetect.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_ml.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_imgproc.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_highgui.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_flann.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_features2d.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_core.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_calib3d.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libtesseract.so
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/liblept.so
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libtesseract.so
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/liblept.so
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_video.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_features2d.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_ml.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_highgui.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_videoio.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_imgproc.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_flann.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: /usr/local/lib/libopencv_core.so.3.1.0
CMakeFiles/CMakeRelink.dir/alprd: openalpr/support/libsupport.a
CMakeFiles/CMakeRelink.dir/alprd: CMakeFiles/alprd.dir/relink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable CMakeFiles/CMakeRelink.dir/alprd"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/alprd.dir/relink.txt --verbose=$(VERBOSE)

# Rule to relink during preinstall.
CMakeFiles/alprd.dir/preinstall: CMakeFiles/CMakeRelink.dir/alprd
.PHONY : CMakeFiles/alprd.dir/preinstall

CMakeFiles/alprd.dir/requires: CMakeFiles/alprd.dir/daemon.cpp.o.requires
CMakeFiles/alprd.dir/requires: CMakeFiles/alprd.dir/daemon/beanstalk.c.o.requires
CMakeFiles/alprd.dir/requires: CMakeFiles/alprd.dir/daemon/beanstalk.cc.o.requires
.PHONY : CMakeFiles/alprd.dir/requires

CMakeFiles/alprd.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/alprd.dir/cmake_clean.cmake
.PHONY : CMakeFiles/alprd.dir/clean

CMakeFiles/alprd.dir/depend:
	cd /home/ascc/openalpr-master/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ascc/openalpr-master/src /home/ascc/openalpr-master/src /home/ascc/openalpr-master/src /home/ascc/openalpr-master/src /home/ascc/openalpr-master/src/CMakeFiles/alprd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/alprd.dir/depend
