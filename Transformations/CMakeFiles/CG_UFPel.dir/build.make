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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2"

# Include any dependencies generated for this target.
include CMakeFiles/CG_UFPel.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CG_UFPel.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CG_UFPel.dir/flags.make

CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o: CMakeFiles/CG_UFPel.dir/flags.make
CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o: sources/controls.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o -c "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/controls.cpp"

CMakeFiles/CG_UFPel.dir/sources/controls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CG_UFPel.dir/sources/controls.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/controls.cpp" > CMakeFiles/CG_UFPel.dir/sources/controls.cpp.i

CMakeFiles/CG_UFPel.dir/sources/controls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CG_UFPel.dir/sources/controls.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/controls.cpp" -o CMakeFiles/CG_UFPel.dir/sources/controls.cpp.s

CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o.requires:
.PHONY : CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o.requires

CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o.provides: CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o.requires
	$(MAKE) -f CMakeFiles/CG_UFPel.dir/build.make CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o.provides.build
.PHONY : CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o.provides

CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o.provides.build: CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o

CMakeFiles/CG_UFPel.dir/sources/main.cpp.o: CMakeFiles/CG_UFPel.dir/flags.make
CMakeFiles/CG_UFPel.dir/sources/main.cpp.o: sources/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/CMakeFiles" $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/CG_UFPel.dir/sources/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CG_UFPel.dir/sources/main.cpp.o -c "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/main.cpp"

CMakeFiles/CG_UFPel.dir/sources/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CG_UFPel.dir/sources/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/main.cpp" > CMakeFiles/CG_UFPel.dir/sources/main.cpp.i

CMakeFiles/CG_UFPel.dir/sources/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CG_UFPel.dir/sources/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/main.cpp" -o CMakeFiles/CG_UFPel.dir/sources/main.cpp.s

CMakeFiles/CG_UFPel.dir/sources/main.cpp.o.requires:
.PHONY : CMakeFiles/CG_UFPel.dir/sources/main.cpp.o.requires

CMakeFiles/CG_UFPel.dir/sources/main.cpp.o.provides: CMakeFiles/CG_UFPel.dir/sources/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/CG_UFPel.dir/build.make CMakeFiles/CG_UFPel.dir/sources/main.cpp.o.provides.build
.PHONY : CMakeFiles/CG_UFPel.dir/sources/main.cpp.o.provides

CMakeFiles/CG_UFPel.dir/sources/main.cpp.o.provides.build: CMakeFiles/CG_UFPel.dir/sources/main.cpp.o

CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o: CMakeFiles/CG_UFPel.dir/flags.make
CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o: sources/objloader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/CMakeFiles" $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o -c "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/objloader.cpp"

CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/objloader.cpp" > CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.i

CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/objloader.cpp" -o CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.s

CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o.requires:
.PHONY : CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o.requires

CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o.provides: CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o.requires
	$(MAKE) -f CMakeFiles/CG_UFPel.dir/build.make CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o.provides.build
.PHONY : CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o.provides

CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o.provides.build: CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o

CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o: CMakeFiles/CG_UFPel.dir/flags.make
CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o: sources/quaternion_utils.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/CMakeFiles" $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o -c "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/quaternion_utils.cpp"

CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/quaternion_utils.cpp" > CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.i

CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/quaternion_utils.cpp" -o CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.s

CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o.requires:
.PHONY : CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o.requires

CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o.provides: CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o.requires
	$(MAKE) -f CMakeFiles/CG_UFPel.dir/build.make CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o.provides.build
.PHONY : CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o.provides

CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o.provides.build: CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o

CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o: CMakeFiles/CG_UFPel.dir/flags.make
CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o: sources/shader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/CMakeFiles" $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o -c "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/shader.cpp"

CMakeFiles/CG_UFPel.dir/sources/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CG_UFPel.dir/sources/shader.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/shader.cpp" > CMakeFiles/CG_UFPel.dir/sources/shader.cpp.i

CMakeFiles/CG_UFPel.dir/sources/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CG_UFPel.dir/sources/shader.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/shader.cpp" -o CMakeFiles/CG_UFPel.dir/sources/shader.cpp.s

CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o.requires:
.PHONY : CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o.requires

CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o.provides: CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/CG_UFPel.dir/build.make CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o.provides.build
.PHONY : CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o.provides

CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o.provides.build: CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o

CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o: CMakeFiles/CG_UFPel.dir/flags.make
CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o: sources/tangentspace.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/CMakeFiles" $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o -c "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/tangentspace.cpp"

CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/tangentspace.cpp" > CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.i

CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/tangentspace.cpp" -o CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.s

CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o.requires:
.PHONY : CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o.requires

CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o.provides: CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o.requires
	$(MAKE) -f CMakeFiles/CG_UFPel.dir/build.make CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o.provides.build
.PHONY : CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o.provides

CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o.provides.build: CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o

CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o: CMakeFiles/CG_UFPel.dir/flags.make
CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o: sources/text2D.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/CMakeFiles" $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o -c "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/text2D.cpp"

CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/text2D.cpp" > CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.i

CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/text2D.cpp" -o CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.s

CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o.requires:
.PHONY : CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o.requires

CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o.provides: CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o.requires
	$(MAKE) -f CMakeFiles/CG_UFPel.dir/build.make CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o.provides.build
.PHONY : CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o.provides

CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o.provides.build: CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o

CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o: CMakeFiles/CG_UFPel.dir/flags.make
CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o: sources/texture.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/CMakeFiles" $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o -c "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/texture.cpp"

CMakeFiles/CG_UFPel.dir/sources/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CG_UFPel.dir/sources/texture.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/texture.cpp" > CMakeFiles/CG_UFPel.dir/sources/texture.cpp.i

CMakeFiles/CG_UFPel.dir/sources/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CG_UFPel.dir/sources/texture.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/texture.cpp" -o CMakeFiles/CG_UFPel.dir/sources/texture.cpp.s

CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o.requires:
.PHONY : CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o.requires

CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o.provides: CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o.requires
	$(MAKE) -f CMakeFiles/CG_UFPel.dir/build.make CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o.provides.build
.PHONY : CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o.provides

CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o.provides.build: CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o

CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o: CMakeFiles/CG_UFPel.dir/flags.make
CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o: sources/vboindexer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/CMakeFiles" $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o -c "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/vboindexer.cpp"

CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/vboindexer.cpp" > CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.i

CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/vboindexer.cpp" -o CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.s

CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o.requires:
.PHONY : CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o.requires

CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o.provides: CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o.requires
	$(MAKE) -f CMakeFiles/CG_UFPel.dir/build.make CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o.provides.build
.PHONY : CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o.provides

CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o.provides.build: CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o

CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o: CMakeFiles/CG_UFPel.dir/flags.make
CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o: sources/glerror.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/CMakeFiles" $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o -c "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/glerror.cpp"

CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/glerror.cpp" > CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.i

CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/glerror.cpp" -o CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.s

CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o.requires:
.PHONY : CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o.requires

CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o.provides: CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o.requires
	$(MAKE) -f CMakeFiles/CG_UFPel.dir/build.make CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o.provides.build
.PHONY : CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o.provides

CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o.provides.build: CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o

CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o: CMakeFiles/CG_UFPel.dir/flags.make
CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o: sources/calcs.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/CMakeFiles" $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o -c "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/calcs.cpp"

CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/calcs.cpp" > CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.i

CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/sources/calcs.cpp" -o CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.s

CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o.requires:
.PHONY : CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o.requires

CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o.provides: CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o.requires
	$(MAKE) -f CMakeFiles/CG_UFPel.dir/build.make CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o.provides.build
.PHONY : CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o.provides

CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o.provides.build: CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o

# Object files for target CG_UFPel
CG_UFPel_OBJECTS = \
"CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o" \
"CMakeFiles/CG_UFPel.dir/sources/main.cpp.o" \
"CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o" \
"CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o" \
"CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o" \
"CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o" \
"CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o" \
"CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o" \
"CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o" \
"CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o" \
"CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o"

# External object files for target CG_UFPel
CG_UFPel_EXTERNAL_OBJECTS =

CG_UFPel: CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o
CG_UFPel: CMakeFiles/CG_UFPel.dir/sources/main.cpp.o
CG_UFPel: CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o
CG_UFPel: CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o
CG_UFPel: CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o
CG_UFPel: CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o
CG_UFPel: CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o
CG_UFPel: CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o
CG_UFPel: CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o
CG_UFPel: CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o
CG_UFPel: CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o
CG_UFPel: CMakeFiles/CG_UFPel.dir/build.make
CG_UFPel: /usr/lib/x86_64-linux-gnu/libGLU.so
CG_UFPel: /usr/lib/x86_64-linux-gnu/libGL.so
CG_UFPel: /usr/lib/x86_64-linux-gnu/libX11.so
CG_UFPel: /usr/lib/x86_64-linux-gnu/libXext.so
CG_UFPel: external/glfw-3.0.3/src/libglfw3.a
CG_UFPel: external/libGLEW_190.a
CG_UFPel: external/libANTTWEAKBAR_116_OGLCORE_GLFW.a
CG_UFPel: external/assimp-3.0.1270/code/libassimp.a
CG_UFPel: /usr/lib/x86_64-linux-gnu/libGLU.so
CG_UFPel: /usr/lib/x86_64-linux-gnu/libXrandr.so
CG_UFPel: /usr/lib/x86_64-linux-gnu/libXi.so
CG_UFPel: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
CG_UFPel: /usr/lib/x86_64-linux-gnu/librt.so
CG_UFPel: /usr/lib/x86_64-linux-gnu/libm.so
CG_UFPel: /usr/lib/x86_64-linux-gnu/libGL.so
CG_UFPel: /usr/lib/x86_64-linux-gnu/libX11.so
CG_UFPel: /usr/lib/x86_64-linux-gnu/libXext.so
CG_UFPel: external/assimp-3.0.1270/contrib/zlib/libz.a
CG_UFPel: CMakeFiles/CG_UFPel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable CG_UFPel"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CG_UFPel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CG_UFPel.dir/build: CG_UFPel
.PHONY : CMakeFiles/CG_UFPel.dir/build

CMakeFiles/CG_UFPel.dir/requires: CMakeFiles/CG_UFPel.dir/sources/controls.cpp.o.requires
CMakeFiles/CG_UFPel.dir/requires: CMakeFiles/CG_UFPel.dir/sources/main.cpp.o.requires
CMakeFiles/CG_UFPel.dir/requires: CMakeFiles/CG_UFPel.dir/sources/objloader.cpp.o.requires
CMakeFiles/CG_UFPel.dir/requires: CMakeFiles/CG_UFPel.dir/sources/quaternion_utils.cpp.o.requires
CMakeFiles/CG_UFPel.dir/requires: CMakeFiles/CG_UFPel.dir/sources/shader.cpp.o.requires
CMakeFiles/CG_UFPel.dir/requires: CMakeFiles/CG_UFPel.dir/sources/tangentspace.cpp.o.requires
CMakeFiles/CG_UFPel.dir/requires: CMakeFiles/CG_UFPel.dir/sources/text2D.cpp.o.requires
CMakeFiles/CG_UFPel.dir/requires: CMakeFiles/CG_UFPel.dir/sources/texture.cpp.o.requires
CMakeFiles/CG_UFPel.dir/requires: CMakeFiles/CG_UFPel.dir/sources/vboindexer.cpp.o.requires
CMakeFiles/CG_UFPel.dir/requires: CMakeFiles/CG_UFPel.dir/sources/glerror.cpp.o.requires
CMakeFiles/CG_UFPel.dir/requires: CMakeFiles/CG_UFPel.dir/sources/calcs.cpp.o.requires
.PHONY : CMakeFiles/CG_UFPel.dir/requires

CMakeFiles/CG_UFPel.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CG_UFPel.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CG_UFPel.dir/clean

CMakeFiles/CG_UFPel.dir/depend:
	cd "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2" "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2" "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2" "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2" "/home/viniciusmoraes/Computacao Grafica/cg_ufpel/Trabalho 2/CMakeFiles/CG_UFPel.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/CG_UFPel.dir/depend

