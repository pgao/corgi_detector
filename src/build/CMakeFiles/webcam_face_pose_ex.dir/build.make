# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.1.1_1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.1.1_1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/pgao/programming/corgi_detector/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/pgao/programming/corgi_detector/src/build

# Include any dependencies generated for this target.
include CMakeFiles/webcam_face_pose_ex.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/webcam_face_pose_ex.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/webcam_face_pose_ex.dir/flags.make

# Object files for target webcam_face_pose_ex
webcam_face_pose_ex_OBJECTS =

# External object files for target webcam_face_pose_ex
webcam_face_pose_ex_EXTERNAL_OBJECTS =

webcam_face_pose_ex: CMakeFiles/webcam_face_pose_ex.dir/build.make
webcam_face_pose_ex: dlib_build/libdlib.a
webcam_face_pose_ex: /usr/local/lib/libopencv_videostab.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_ts.a
webcam_face_pose_ex: /usr/local/lib/libopencv_superres.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_stitching.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_contrib.2.4.10.dylib
webcam_face_pose_ex: /usr/lib/libpthread.dylib
webcam_face_pose_ex: /usr/X11R6/lib/libX11.dylib
webcam_face_pose_ex: /usr/local/lib/libpng.dylib
webcam_face_pose_ex: /usr/lib/libcblas.dylib
webcam_face_pose_ex: /usr/lib/liblapack.dylib
webcam_face_pose_ex: /usr/lib/libsqlite3.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_nonfree.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_ocl.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_gpu.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_photo.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_objdetect.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_legacy.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_video.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_ml.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_calib3d.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_features2d.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_highgui.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_imgproc.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_flann.2.4.10.dylib
webcam_face_pose_ex: /usr/local/lib/libopencv_core.2.4.10.dylib
webcam_face_pose_ex: CMakeFiles/webcam_face_pose_ex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable webcam_face_pose_ex"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/webcam_face_pose_ex.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/webcam_face_pose_ex.dir/build: webcam_face_pose_ex
.PHONY : CMakeFiles/webcam_face_pose_ex.dir/build

CMakeFiles/webcam_face_pose_ex.dir/requires:
.PHONY : CMakeFiles/webcam_face_pose_ex.dir/requires

CMakeFiles/webcam_face_pose_ex.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/webcam_face_pose_ex.dir/cmake_clean.cmake
.PHONY : CMakeFiles/webcam_face_pose_ex.dir/clean

CMakeFiles/webcam_face_pose_ex.dir/depend:
	cd /Users/pgao/programming/corgi_detector/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/pgao/programming/corgi_detector/src /Users/pgao/programming/corgi_detector/src /Users/pgao/programming/corgi_detector/src/build /Users/pgao/programming/corgi_detector/src/build /Users/pgao/programming/corgi_detector/src/build/CMakeFiles/webcam_face_pose_ex.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/webcam_face_pose_ex.dir/depend

