# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/PAA/Desktop/openalpr-masterold/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/PAA/Desktop/openalpr-masterold/src

# Include any dependencies generated for this target.
include misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/depend.make

# Include the progress variables for this target.
include misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/progress.make

# Include the compile flags for this target's objects.
include misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/flags.make

misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o: misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/flags.make
misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o: misc_utilities/classifychars.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/PAA/Desktop/openalpr-masterold/src/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o"
	cd /home/PAA/Desktop/openalpr-masterold/src/misc_utilities && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o -c /home/PAA/Desktop/openalpr-masterold/src/misc_utilities/classifychars.cpp

misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.i"
	cd /home/PAA/Desktop/openalpr-masterold/src/misc_utilities && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/PAA/Desktop/openalpr-masterold/src/misc_utilities/classifychars.cpp > CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.i

misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.s"
	cd /home/PAA/Desktop/openalpr-masterold/src/misc_utilities && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/PAA/Desktop/openalpr-masterold/src/misc_utilities/classifychars.cpp -o CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.s

misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o.requires:
.PHONY : misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o.requires

misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o.provides: misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o.requires
	$(MAKE) -f misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/build.make misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o.provides.build
.PHONY : misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o.provides

misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o.provides.build: misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o

# Object files for target openalpr-utils-classifychars
openalpr__utils__classifychars_OBJECTS = \
"CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o"

# External object files for target openalpr-utils-classifychars
openalpr__utils__classifychars_EXTERNAL_OBJECTS =

misc_utilities/openalpr-utils-classifychars: misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o
misc_utilities/openalpr-utils-classifychars: misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/build.make
misc_utilities/openalpr-utils-classifychars: openalpr/libopenalpr.so.2
misc_utilities/openalpr-utils-classifychars: openalpr/support/libsupport.a
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_videostab.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_videoio.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_video.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_ts.a
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_superres.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_stitching.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_shape.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_photo.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_objdetect.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_ml.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_imgproc.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_highgui.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_flann.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_features2d.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_core.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_calib3d.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libtesseract.so
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/liblept.so
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libtesseract.so
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/liblept.so
misc_utilities/openalpr-utils-classifychars: /usr/lib/x86_64-linux-gnu/libGLU.so
misc_utilities/openalpr-utils-classifychars: /usr/lib/x86_64-linux-gnu/libGL.so
misc_utilities/openalpr-utils-classifychars: /usr/lib/x86_64-linux-gnu/libSM.so
misc_utilities/openalpr-utils-classifychars: /usr/lib/x86_64-linux-gnu/libICE.so
misc_utilities/openalpr-utils-classifychars: /usr/lib/x86_64-linux-gnu/libX11.so
misc_utilities/openalpr-utils-classifychars: /usr/lib/x86_64-linux-gnu/libXext.so
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_video.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_features2d.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_highgui.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_videoio.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_imgproc.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_flann.so.3.0.0
misc_utilities/openalpr-utils-classifychars: /usr/local/lib/libopencv_core.so.3.0.0
misc_utilities/openalpr-utils-classifychars: misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable openalpr-utils-classifychars"
	cd /home/PAA/Desktop/openalpr-masterold/src/misc_utilities && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openalpr-utils-classifychars.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/build: misc_utilities/openalpr-utils-classifychars
.PHONY : misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/build

misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/requires: misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/classifychars.cpp.o.requires
.PHONY : misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/requires

misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/clean:
	cd /home/PAA/Desktop/openalpr-masterold/src/misc_utilities && $(CMAKE_COMMAND) -P CMakeFiles/openalpr-utils-classifychars.dir/cmake_clean.cmake
.PHONY : misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/clean

misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/depend:
	cd /home/PAA/Desktop/openalpr-masterold/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/PAA/Desktop/openalpr-masterold/src /home/PAA/Desktop/openalpr-masterold/src/misc_utilities /home/PAA/Desktop/openalpr-masterold/src /home/PAA/Desktop/openalpr-masterold/src/misc_utilities /home/PAA/Desktop/openalpr-masterold/src/misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : misc_utilities/CMakeFiles/openalpr-utils-classifychars.dir/depend

