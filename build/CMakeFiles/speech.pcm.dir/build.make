# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/philip/Documents/c++/Modules_example_cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/philip/Documents/c++/Modules_example_cmake/build

# Utility rule file for speech.pcm.

# Include the progress variables for this target.
include CMakeFiles/speech.pcm.dir/progress.make

CMakeFiles/speech.pcm:
	/usr/bin/c++ -std=c++2a -stdlib=libc++ -fmodules -c /home/philip/Documents/c++/Modules_example_cmake/modules/speech.cpp -Xclang -emit-module-interface -o /home/philip/Documents/c++/Modules_example_cmake/build/modules/speech.pcm

speech.pcm: CMakeFiles/speech.pcm
speech.pcm: CMakeFiles/speech.pcm.dir/build.make

.PHONY : speech.pcm

# Rule to build all files generated by this target.
CMakeFiles/speech.pcm.dir/build: speech.pcm

.PHONY : CMakeFiles/speech.pcm.dir/build

CMakeFiles/speech.pcm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/speech.pcm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/speech.pcm.dir/clean

CMakeFiles/speech.pcm.dir/depend:
	cd /home/philip/Documents/c++/Modules_example_cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/philip/Documents/c++/Modules_example_cmake /home/philip/Documents/c++/Modules_example_cmake /home/philip/Documents/c++/Modules_example_cmake/build /home/philip/Documents/c++/Modules_example_cmake/build /home/philip/Documents/c++/Modules_example_cmake/build/CMakeFiles/speech.pcm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/speech.pcm.dir/depend

