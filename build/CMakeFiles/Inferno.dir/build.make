# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\build"

# Include any dependencies generated for this target.
include CMakeFiles/Inferno.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Inferno.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Inferno.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Inferno.dir/flags.make

CMakeFiles/Inferno.dir/src/main.cpp.obj: CMakeFiles/Inferno.dir/flags.make
CMakeFiles/Inferno.dir/src/main.cpp.obj: CMakeFiles/Inferno.dir/includes_CXX.rsp
CMakeFiles/Inferno.dir/src/main.cpp.obj: C:/Users/deanp/OneDrive/Documents/Coding\ Practice/GameDev/GL_Camera/src/main.cpp
CMakeFiles/Inferno.dir/src/main.cpp.obj: CMakeFiles/Inferno.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Inferno.dir/src/main.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Inferno.dir/src/main.cpp.obj -MF CMakeFiles\Inferno.dir\src\main.cpp.obj.d -o CMakeFiles\Inferno.dir\src\main.cpp.obj -c "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\main.cpp"

CMakeFiles/Inferno.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Inferno.dir/src/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\main.cpp" > CMakeFiles\Inferno.dir\src\main.cpp.i

CMakeFiles/Inferno.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Inferno.dir/src/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\main.cpp" -o CMakeFiles\Inferno.dir\src\main.cpp.s

CMakeFiles/Inferno.dir/src/glad.c.obj: CMakeFiles/Inferno.dir/flags.make
CMakeFiles/Inferno.dir/src/glad.c.obj: CMakeFiles/Inferno.dir/includes_C.rsp
CMakeFiles/Inferno.dir/src/glad.c.obj: C:/Users/deanp/OneDrive/Documents/Coding\ Practice/GameDev/GL_Camera/src/glad.c
CMakeFiles/Inferno.dir/src/glad.c.obj: CMakeFiles/Inferno.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Inferno.dir/src/glad.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Inferno.dir/src/glad.c.obj -MF CMakeFiles\Inferno.dir\src\glad.c.obj.d -o CMakeFiles\Inferno.dir\src\glad.c.obj -c "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\glad.c"

CMakeFiles/Inferno.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Inferno.dir/src/glad.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\glad.c" > CMakeFiles\Inferno.dir\src\glad.c.i

CMakeFiles/Inferno.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Inferno.dir/src/glad.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\glad.c" -o CMakeFiles\Inferno.dir\src\glad.c.s

CMakeFiles/Inferno.dir/src/shader.cpp.obj: CMakeFiles/Inferno.dir/flags.make
CMakeFiles/Inferno.dir/src/shader.cpp.obj: CMakeFiles/Inferno.dir/includes_CXX.rsp
CMakeFiles/Inferno.dir/src/shader.cpp.obj: C:/Users/deanp/OneDrive/Documents/Coding\ Practice/GameDev/GL_Camera/src/shader.cpp
CMakeFiles/Inferno.dir/src/shader.cpp.obj: CMakeFiles/Inferno.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Inferno.dir/src/shader.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Inferno.dir/src/shader.cpp.obj -MF CMakeFiles\Inferno.dir\src\shader.cpp.obj.d -o CMakeFiles\Inferno.dir\src\shader.cpp.obj -c "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\shader.cpp"

CMakeFiles/Inferno.dir/src/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Inferno.dir/src/shader.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\shader.cpp" > CMakeFiles\Inferno.dir\src\shader.cpp.i

CMakeFiles/Inferno.dir/src/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Inferno.dir/src/shader.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\shader.cpp" -o CMakeFiles\Inferno.dir\src\shader.cpp.s

CMakeFiles/Inferno.dir/src/camera.cpp.obj: CMakeFiles/Inferno.dir/flags.make
CMakeFiles/Inferno.dir/src/camera.cpp.obj: CMakeFiles/Inferno.dir/includes_CXX.rsp
CMakeFiles/Inferno.dir/src/camera.cpp.obj: C:/Users/deanp/OneDrive/Documents/Coding\ Practice/GameDev/GL_Camera/src/camera.cpp
CMakeFiles/Inferno.dir/src/camera.cpp.obj: CMakeFiles/Inferno.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Inferno.dir/src/camera.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Inferno.dir/src/camera.cpp.obj -MF CMakeFiles\Inferno.dir\src\camera.cpp.obj.d -o CMakeFiles\Inferno.dir\src\camera.cpp.obj -c "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\camera.cpp"

CMakeFiles/Inferno.dir/src/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Inferno.dir/src/camera.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\camera.cpp" > CMakeFiles\Inferno.dir\src\camera.cpp.i

CMakeFiles/Inferno.dir/src/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Inferno.dir/src/camera.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\camera.cpp" -o CMakeFiles\Inferno.dir\src\camera.cpp.s

CMakeFiles/Inferno.dir/src/q_math.cpp.obj: CMakeFiles/Inferno.dir/flags.make
CMakeFiles/Inferno.dir/src/q_math.cpp.obj: CMakeFiles/Inferno.dir/includes_CXX.rsp
CMakeFiles/Inferno.dir/src/q_math.cpp.obj: C:/Users/deanp/OneDrive/Documents/Coding\ Practice/GameDev/GL_Camera/src/q_math.cpp
CMakeFiles/Inferno.dir/src/q_math.cpp.obj: CMakeFiles/Inferno.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Inferno.dir/src/q_math.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Inferno.dir/src/q_math.cpp.obj -MF CMakeFiles\Inferno.dir\src\q_math.cpp.obj.d -o CMakeFiles\Inferno.dir\src\q_math.cpp.obj -c "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\q_math.cpp"

CMakeFiles/Inferno.dir/src/q_math.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Inferno.dir/src/q_math.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\q_math.cpp" > CMakeFiles\Inferno.dir\src\q_math.cpp.i

CMakeFiles/Inferno.dir/src/q_math.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Inferno.dir/src/q_math.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\src\q_math.cpp" -o CMakeFiles\Inferno.dir\src\q_math.cpp.s

# Object files for target Inferno
Inferno_OBJECTS = \
"CMakeFiles/Inferno.dir/src/main.cpp.obj" \
"CMakeFiles/Inferno.dir/src/glad.c.obj" \
"CMakeFiles/Inferno.dir/src/shader.cpp.obj" \
"CMakeFiles/Inferno.dir/src/camera.cpp.obj" \
"CMakeFiles/Inferno.dir/src/q_math.cpp.obj"

# External object files for target Inferno
Inferno_EXTERNAL_OBJECTS =

Inferno.exe: CMakeFiles/Inferno.dir/src/main.cpp.obj
Inferno.exe: CMakeFiles/Inferno.dir/src/glad.c.obj
Inferno.exe: CMakeFiles/Inferno.dir/src/shader.cpp.obj
Inferno.exe: CMakeFiles/Inferno.dir/src/camera.cpp.obj
Inferno.exe: CMakeFiles/Inferno.dir/src/q_math.cpp.obj
Inferno.exe: CMakeFiles/Inferno.dir/build.make
Inferno.exe: dependencies/glfw/src/libglfw3.a
Inferno.exe: CMakeFiles/Inferno.dir/linkLibs.rsp
Inferno.exe: CMakeFiles/Inferno.dir/objects1.rsp
Inferno.exe: CMakeFiles/Inferno.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable Inferno.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Inferno.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Inferno.dir/build: Inferno.exe
.PHONY : CMakeFiles/Inferno.dir/build

CMakeFiles/Inferno.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Inferno.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Inferno.dir/clean

CMakeFiles/Inferno.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera" "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera" "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\build" "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\build" "C:\Users\deanp\OneDrive\Documents\Coding Practice\GameDev\GL_Camera\build\CMakeFiles\Inferno.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/Inferno.dir/depend

