# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zhangyu/CLionProjects/YuGC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zhangyu/CLionProjects/YuGC/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/YuGC.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/YuGC.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/YuGC.dir/flags.make

CMakeFiles/YuGC.dir/main.cpp.o: CMakeFiles/YuGC.dir/flags.make
CMakeFiles/YuGC.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhangyu/CLionProjects/YuGC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/YuGC.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/YuGC.dir/main.cpp.o -c /Users/zhangyu/CLionProjects/YuGC/main.cpp

CMakeFiles/YuGC.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/YuGC.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhangyu/CLionProjects/YuGC/main.cpp > CMakeFiles/YuGC.dir/main.cpp.i

CMakeFiles/YuGC.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/YuGC.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhangyu/CLionProjects/YuGC/main.cpp -o CMakeFiles/YuGC.dir/main.cpp.s

CMakeFiles/YuGC.dir/src/memory_pool.cpp.o: CMakeFiles/YuGC.dir/flags.make
CMakeFiles/YuGC.dir/src/memory_pool.cpp.o: ../src/memory_pool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhangyu/CLionProjects/YuGC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/YuGC.dir/src/memory_pool.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/YuGC.dir/src/memory_pool.cpp.o -c /Users/zhangyu/CLionProjects/YuGC/src/memory_pool.cpp

CMakeFiles/YuGC.dir/src/memory_pool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/YuGC.dir/src/memory_pool.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhangyu/CLionProjects/YuGC/src/memory_pool.cpp > CMakeFiles/YuGC.dir/src/memory_pool.cpp.i

CMakeFiles/YuGC.dir/src/memory_pool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/YuGC.dir/src/memory_pool.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhangyu/CLionProjects/YuGC/src/memory_pool.cpp -o CMakeFiles/YuGC.dir/src/memory_pool.cpp.s

CMakeFiles/YuGC.dir/src/memory_chunk.cpp.o: CMakeFiles/YuGC.dir/flags.make
CMakeFiles/YuGC.dir/src/memory_chunk.cpp.o: ../src/memory_chunk.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhangyu/CLionProjects/YuGC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/YuGC.dir/src/memory_chunk.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/YuGC.dir/src/memory_chunk.cpp.o -c /Users/zhangyu/CLionProjects/YuGC/src/memory_chunk.cpp

CMakeFiles/YuGC.dir/src/memory_chunk.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/YuGC.dir/src/memory_chunk.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhangyu/CLionProjects/YuGC/src/memory_chunk.cpp > CMakeFiles/YuGC.dir/src/memory_chunk.cpp.i

CMakeFiles/YuGC.dir/src/memory_chunk.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/YuGC.dir/src/memory_chunk.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhangyu/CLionProjects/YuGC/src/memory_chunk.cpp -o CMakeFiles/YuGC.dir/src/memory_chunk.cpp.s

CMakeFiles/YuGC.dir/src/memory_cell.cpp.o: CMakeFiles/YuGC.dir/flags.make
CMakeFiles/YuGC.dir/src/memory_cell.cpp.o: ../src/memory_cell.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/zhangyu/CLionProjects/YuGC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/YuGC.dir/src/memory_cell.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/YuGC.dir/src/memory_cell.cpp.o -c /Users/zhangyu/CLionProjects/YuGC/src/memory_cell.cpp

CMakeFiles/YuGC.dir/src/memory_cell.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/YuGC.dir/src/memory_cell.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/zhangyu/CLionProjects/YuGC/src/memory_cell.cpp > CMakeFiles/YuGC.dir/src/memory_cell.cpp.i

CMakeFiles/YuGC.dir/src/memory_cell.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/YuGC.dir/src/memory_cell.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/zhangyu/CLionProjects/YuGC/src/memory_cell.cpp -o CMakeFiles/YuGC.dir/src/memory_cell.cpp.s

# Object files for target YuGC
YuGC_OBJECTS = \
"CMakeFiles/YuGC.dir/main.cpp.o" \
"CMakeFiles/YuGC.dir/src/memory_pool.cpp.o" \
"CMakeFiles/YuGC.dir/src/memory_chunk.cpp.o" \
"CMakeFiles/YuGC.dir/src/memory_cell.cpp.o"

# External object files for target YuGC
YuGC_EXTERNAL_OBJECTS =

YuGC: CMakeFiles/YuGC.dir/main.cpp.o
YuGC: CMakeFiles/YuGC.dir/src/memory_pool.cpp.o
YuGC: CMakeFiles/YuGC.dir/src/memory_chunk.cpp.o
YuGC: CMakeFiles/YuGC.dir/src/memory_cell.cpp.o
YuGC: CMakeFiles/YuGC.dir/build.make
YuGC: CMakeFiles/YuGC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/zhangyu/CLionProjects/YuGC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable YuGC"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/YuGC.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/YuGC.dir/build: YuGC

.PHONY : CMakeFiles/YuGC.dir/build

CMakeFiles/YuGC.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/YuGC.dir/cmake_clean.cmake
.PHONY : CMakeFiles/YuGC.dir/clean

CMakeFiles/YuGC.dir/depend:
	cd /Users/zhangyu/CLionProjects/YuGC/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhangyu/CLionProjects/YuGC /Users/zhangyu/CLionProjects/YuGC /Users/zhangyu/CLionProjects/YuGC/cmake-build-debug /Users/zhangyu/CLionProjects/YuGC/cmake-build-debug /Users/zhangyu/CLionProjects/YuGC/cmake-build-debug/CMakeFiles/YuGC.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/YuGC.dir/depend

