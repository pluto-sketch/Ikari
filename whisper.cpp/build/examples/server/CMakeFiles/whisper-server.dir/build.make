# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pluto/Ikari/whisper.cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pluto/Ikari/whisper.cpp/build

# Include any dependencies generated for this target.
include examples/server/CMakeFiles/whisper-server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/server/CMakeFiles/whisper-server.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/server/CMakeFiles/whisper-server.dir/progress.make

# Include the compile flags for this target's objects.
include examples/server/CMakeFiles/whisper-server.dir/flags.make

examples/server/CMakeFiles/whisper-server.dir/codegen:
.PHONY : examples/server/CMakeFiles/whisper-server.dir/codegen

examples/server/CMakeFiles/whisper-server.dir/server.cpp.o: examples/server/CMakeFiles/whisper-server.dir/flags.make
examples/server/CMakeFiles/whisper-server.dir/server.cpp.o: /home/pluto/Ikari/whisper.cpp/examples/server/server.cpp
examples/server/CMakeFiles/whisper-server.dir/server.cpp.o: examples/server/CMakeFiles/whisper-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/pluto/Ikari/whisper.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/server/CMakeFiles/whisper-server.dir/server.cpp.o"
	cd /home/pluto/Ikari/whisper.cpp/build/examples/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/server/CMakeFiles/whisper-server.dir/server.cpp.o -MF CMakeFiles/whisper-server.dir/server.cpp.o.d -o CMakeFiles/whisper-server.dir/server.cpp.o -c /home/pluto/Ikari/whisper.cpp/examples/server/server.cpp

examples/server/CMakeFiles/whisper-server.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/whisper-server.dir/server.cpp.i"
	cd /home/pluto/Ikari/whisper.cpp/build/examples/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pluto/Ikari/whisper.cpp/examples/server/server.cpp > CMakeFiles/whisper-server.dir/server.cpp.i

examples/server/CMakeFiles/whisper-server.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/whisper-server.dir/server.cpp.s"
	cd /home/pluto/Ikari/whisper.cpp/build/examples/server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pluto/Ikari/whisper.cpp/examples/server/server.cpp -o CMakeFiles/whisper-server.dir/server.cpp.s

# Object files for target whisper-server
whisper__server_OBJECTS = \
"CMakeFiles/whisper-server.dir/server.cpp.o"

# External object files for target whisper-server
whisper__server_EXTERNAL_OBJECTS =

bin/whisper-server: examples/server/CMakeFiles/whisper-server.dir/server.cpp.o
bin/whisper-server: examples/server/CMakeFiles/whisper-server.dir/build.make
bin/whisper-server: examples/server/CMakeFiles/whisper-server.dir/compiler_depend.ts
bin/whisper-server: examples/libcommon.a
bin/whisper-server: src/libwhisper.so.1.7.5
bin/whisper-server: ggml/src/libggml.so
bin/whisper-server: ggml/src/libggml-cpu.so
bin/whisper-server: ggml/src/libggml-base.so
bin/whisper-server: examples/server/CMakeFiles/whisper-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/pluto/Ikari/whisper.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/whisper-server"
	cd /home/pluto/Ikari/whisper.cpp/build/examples/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/whisper-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/server/CMakeFiles/whisper-server.dir/build: bin/whisper-server
.PHONY : examples/server/CMakeFiles/whisper-server.dir/build

examples/server/CMakeFiles/whisper-server.dir/clean:
	cd /home/pluto/Ikari/whisper.cpp/build/examples/server && $(CMAKE_COMMAND) -P CMakeFiles/whisper-server.dir/cmake_clean.cmake
.PHONY : examples/server/CMakeFiles/whisper-server.dir/clean

examples/server/CMakeFiles/whisper-server.dir/depend:
	cd /home/pluto/Ikari/whisper.cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pluto/Ikari/whisper.cpp /home/pluto/Ikari/whisper.cpp/examples/server /home/pluto/Ikari/whisper.cpp/build /home/pluto/Ikari/whisper.cpp/build/examples/server /home/pluto/Ikari/whisper.cpp/build/examples/server/CMakeFiles/whisper-server.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/server/CMakeFiles/whisper-server.dir/depend

