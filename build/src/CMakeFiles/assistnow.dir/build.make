# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/ched/Desktop/Erik/assistnow

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ched/Desktop/Erik/assistnow/build

# Include any dependencies generated for this target.
include src/CMakeFiles/assistnow.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/assistnow.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/assistnow.dir/flags.make

src/CMakeFiles/assistnow.dir/main.cpp.o: src/CMakeFiles/assistnow.dir/flags.make
src/CMakeFiles/assistnow.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ched/Desktop/Erik/assistnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/assistnow.dir/main.cpp.o"
	cd /home/ched/Desktop/Erik/assistnow/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/assistnow.dir/main.cpp.o -c /home/ched/Desktop/Erik/assistnow/src/main.cpp

src/CMakeFiles/assistnow.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assistnow.dir/main.cpp.i"
	cd /home/ched/Desktop/Erik/assistnow/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ched/Desktop/Erik/assistnow/src/main.cpp > CMakeFiles/assistnow.dir/main.cpp.i

src/CMakeFiles/assistnow.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assistnow.dir/main.cpp.s"
	cd /home/ched/Desktop/Erik/assistnow/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ched/Desktop/Erik/assistnow/src/main.cpp -o CMakeFiles/assistnow.dir/main.cpp.s

src/CMakeFiles/assistnow.dir/main.cpp.o.requires:

.PHONY : src/CMakeFiles/assistnow.dir/main.cpp.o.requires

src/CMakeFiles/assistnow.dir/main.cpp.o.provides: src/CMakeFiles/assistnow.dir/main.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/assistnow.dir/build.make src/CMakeFiles/assistnow.dir/main.cpp.o.provides.build
.PHONY : src/CMakeFiles/assistnow.dir/main.cpp.o.provides

src/CMakeFiles/assistnow.dir/main.cpp.o.provides.build: src/CMakeFiles/assistnow.dir/main.cpp.o


# Object files for target assistnow
assistnow_OBJECTS = \
"CMakeFiles/assistnow.dir/main.cpp.o"

# External object files for target assistnow
assistnow_EXTERNAL_OBJECTS =

src/assistnow: src/CMakeFiles/assistnow.dir/main.cpp.o
src/assistnow: src/CMakeFiles/assistnow.dir/build.make
src/assistnow: src/CMakeFiles/assistnow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ched/Desktop/Erik/assistnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable assistnow"
	cd /home/ched/Desktop/Erik/assistnow/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/assistnow.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/assistnow.dir/build: src/assistnow

.PHONY : src/CMakeFiles/assistnow.dir/build

src/CMakeFiles/assistnow.dir/requires: src/CMakeFiles/assistnow.dir/main.cpp.o.requires

.PHONY : src/CMakeFiles/assistnow.dir/requires

src/CMakeFiles/assistnow.dir/clean:
	cd /home/ched/Desktop/Erik/assistnow/build/src && $(CMAKE_COMMAND) -P CMakeFiles/assistnow.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/assistnow.dir/clean

src/CMakeFiles/assistnow.dir/depend:
	cd /home/ched/Desktop/Erik/assistnow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ched/Desktop/Erik/assistnow /home/ched/Desktop/Erik/assistnow/src /home/ched/Desktop/Erik/assistnow/build /home/ched/Desktop/Erik/assistnow/build/src /home/ched/Desktop/Erik/assistnow/build/src/CMakeFiles/assistnow.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/assistnow.dir/depend
