# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.2.5\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.2.5\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\source\ClothSimulation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\source\ClothSimulation\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ClothSimulation.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ClothSimulation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ClothSimulation.dir/flags.make

CMakeFiles/ClothSimulation.dir/main.cpp.obj: CMakeFiles/ClothSimulation.dir/flags.make
CMakeFiles/ClothSimulation.dir/main.cpp.obj: CMakeFiles/ClothSimulation.dir/includes_CXX.rsp
CMakeFiles/ClothSimulation.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\source\ClothSimulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ClothSimulation.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ClothSimulation.dir\main.cpp.obj -c D:\source\ClothSimulation\main.cpp

CMakeFiles/ClothSimulation.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClothSimulation.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\source\ClothSimulation\main.cpp > CMakeFiles\ClothSimulation.dir\main.cpp.i

CMakeFiles/ClothSimulation.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClothSimulation.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\source\ClothSimulation\main.cpp -o CMakeFiles\ClothSimulation.dir\main.cpp.s

CMakeFiles/ClothSimulation.dir/cugl.cpp.obj: CMakeFiles/ClothSimulation.dir/flags.make
CMakeFiles/ClothSimulation.dir/cugl.cpp.obj: CMakeFiles/ClothSimulation.dir/includes_CXX.rsp
CMakeFiles/ClothSimulation.dir/cugl.cpp.obj: ../cugl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\source\ClothSimulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ClothSimulation.dir/cugl.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ClothSimulation.dir\cugl.cpp.obj -c D:\source\ClothSimulation\cugl.cpp

CMakeFiles/ClothSimulation.dir/cugl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClothSimulation.dir/cugl.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\source\ClothSimulation\cugl.cpp > CMakeFiles\ClothSimulation.dir\cugl.cpp.i

CMakeFiles/ClothSimulation.dir/cugl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClothSimulation.dir/cugl.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\source\ClothSimulation\cugl.cpp -o CMakeFiles\ClothSimulation.dir\cugl.cpp.s

# Object files for target ClothSimulation
ClothSimulation_OBJECTS = \
"CMakeFiles/ClothSimulation.dir/main.cpp.obj" \
"CMakeFiles/ClothSimulation.dir/cugl.cpp.obj"

# External object files for target ClothSimulation
ClothSimulation_EXTERNAL_OBJECTS =

ClothSimulation.exe: CMakeFiles/ClothSimulation.dir/main.cpp.obj
ClothSimulation.exe: CMakeFiles/ClothSimulation.dir/cugl.cpp.obj
ClothSimulation.exe: CMakeFiles/ClothSimulation.dir/build.make
ClothSimulation.exe: ../GLEW/lib/libglew32.dll.a
ClothSimulation.exe: ../GLFW/lib-mingw-w64/libglfw3.a
ClothSimulation.exe: ../GLUT/lib/libfreeglut.dll.a
ClothSimulation.exe: CMakeFiles/ClothSimulation.dir/linklibs.rsp
ClothSimulation.exe: CMakeFiles/ClothSimulation.dir/objects1.rsp
ClothSimulation.exe: CMakeFiles/ClothSimulation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\source\ClothSimulation\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ClothSimulation.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ClothSimulation.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ClothSimulation.dir/build: ClothSimulation.exe

.PHONY : CMakeFiles/ClothSimulation.dir/build

CMakeFiles/ClothSimulation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ClothSimulation.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ClothSimulation.dir/clean

CMakeFiles/ClothSimulation.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\source\ClothSimulation D:\source\ClothSimulation D:\source\ClothSimulation\cmake-build-debug D:\source\ClothSimulation\cmake-build-debug D:\source\ClothSimulation\cmake-build-debug\CMakeFiles\ClothSimulation.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ClothSimulation.dir/depend

