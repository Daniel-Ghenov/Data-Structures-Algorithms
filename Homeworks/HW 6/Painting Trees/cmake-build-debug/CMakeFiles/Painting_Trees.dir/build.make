# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2023.2.2\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2023.2.2\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\PC-Admin\Desktop\Code\CPP-2\Uni\DSA\Homeworks\HW 6\Painting Trees"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\PC-Admin\Desktop\Code\CPP-2\Uni\DSA\Homeworks\HW 6\Painting Trees\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Painting_Trees.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Painting_Trees.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Painting_Trees.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Painting_Trees.dir/flags.make

CMakeFiles/Painting_Trees.dir/solution.cpp.obj: CMakeFiles/Painting_Trees.dir/flags.make
CMakeFiles/Painting_Trees.dir/solution.cpp.obj: C:/Users/PC-Admin/Desktop/Code/CPP-2/Uni/DSA/Homeworks/HW\ 6/Painting\ Trees/solution.cpp
CMakeFiles/Painting_Trees.dir/solution.cpp.obj: CMakeFiles/Painting_Trees.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\PC-Admin\Desktop\Code\CPP-2\Uni\DSA\Homeworks\HW 6\Painting Trees\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Painting_Trees.dir/solution.cpp.obj"
	C:\PROGRA~1\JETBRA~1\CLION2~1.2\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Painting_Trees.dir/solution.cpp.obj -MF CMakeFiles\Painting_Trees.dir\solution.cpp.obj.d -o CMakeFiles\Painting_Trees.dir\solution.cpp.obj -c "C:\Users\PC-Admin\Desktop\Code\CPP-2\Uni\DSA\Homeworks\HW 6\Painting Trees\solution.cpp"

CMakeFiles/Painting_Trees.dir/solution.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Painting_Trees.dir/solution.cpp.i"
	C:\PROGRA~1\JETBRA~1\CLION2~1.2\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\PC-Admin\Desktop\Code\CPP-2\Uni\DSA\Homeworks\HW 6\Painting Trees\solution.cpp" > CMakeFiles\Painting_Trees.dir\solution.cpp.i

CMakeFiles/Painting_Trees.dir/solution.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Painting_Trees.dir/solution.cpp.s"
	C:\PROGRA~1\JETBRA~1\CLION2~1.2\bin\mingw\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\PC-Admin\Desktop\Code\CPP-2\Uni\DSA\Homeworks\HW 6\Painting Trees\solution.cpp" -o CMakeFiles\Painting_Trees.dir\solution.cpp.s

# Object files for target Painting_Trees
Painting_Trees_OBJECTS = \
"CMakeFiles/Painting_Trees.dir/solution.cpp.obj"

# External object files for target Painting_Trees
Painting_Trees_EXTERNAL_OBJECTS =

Painting_Trees.exe: CMakeFiles/Painting_Trees.dir/solution.cpp.obj
Painting_Trees.exe: CMakeFiles/Painting_Trees.dir/build.make
Painting_Trees.exe: CMakeFiles/Painting_Trees.dir/linkLibs.rsp
Painting_Trees.exe: CMakeFiles/Painting_Trees.dir/objects1.rsp
Painting_Trees.exe: CMakeFiles/Painting_Trees.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\PC-Admin\Desktop\Code\CPP-2\Uni\DSA\Homeworks\HW 6\Painting Trees\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Painting_Trees.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Painting_Trees.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Painting_Trees.dir/build: Painting_Trees.exe
.PHONY : CMakeFiles/Painting_Trees.dir/build

CMakeFiles/Painting_Trees.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Painting_Trees.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Painting_Trees.dir/clean

CMakeFiles/Painting_Trees.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\PC-Admin\Desktop\Code\CPP-2\Uni\DSA\Homeworks\HW 6\Painting Trees" "C:\Users\PC-Admin\Desktop\Code\CPP-2\Uni\DSA\Homeworks\HW 6\Painting Trees" "C:\Users\PC-Admin\Desktop\Code\CPP-2\Uni\DSA\Homeworks\HW 6\Painting Trees\cmake-build-debug" "C:\Users\PC-Admin\Desktop\Code\CPP-2\Uni\DSA\Homeworks\HW 6\Painting Trees\cmake-build-debug" "C:\Users\PC-Admin\Desktop\Code\CPP-2\Uni\DSA\Homeworks\HW 6\Painting Trees\cmake-build-debug\CMakeFiles\Painting_Trees.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Painting_Trees.dir/depend
