# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/saisrini/Downloads/allegro-5.0.10

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/saisrini/Downloads/allegro-5.0.10/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/ex_font_justify.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/ex_font_justify.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/ex_font_justify.dir/flags.make

examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o: examples/CMakeFiles/ex_font_justify.dir/flags.make
examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o: ../examples/ex_font_justify.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/saisrini/Downloads/allegro-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o -c /home/saisrini/Downloads/allegro-5.0.10/examples/ex_font_justify.cpp

examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.i"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/saisrini/Downloads/allegro-5.0.10/examples/ex_font_justify.cpp > CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.i

examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.s"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/saisrini/Downloads/allegro-5.0.10/examples/ex_font_justify.cpp -o CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.s

examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o.requires:
.PHONY : examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o.requires

examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o.provides: examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/ex_font_justify.dir/build.make examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o.provides.build
.PHONY : examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o.provides

examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o.provides.build: examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o

examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.o: examples/CMakeFiles/ex_font_justify.dir/flags.make
examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.o: ../examples/nihgui.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/saisrini/Downloads/allegro-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.o"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ex_font_justify.dir/nihgui.cpp.o -c /home/saisrini/Downloads/allegro-5.0.10/examples/nihgui.cpp

examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex_font_justify.dir/nihgui.cpp.i"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/saisrini/Downloads/allegro-5.0.10/examples/nihgui.cpp > CMakeFiles/ex_font_justify.dir/nihgui.cpp.i

examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex_font_justify.dir/nihgui.cpp.s"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/saisrini/Downloads/allegro-5.0.10/examples/nihgui.cpp -o CMakeFiles/ex_font_justify.dir/nihgui.cpp.s

examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.o.requires:
.PHONY : examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.o.requires

examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.o.provides: examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/ex_font_justify.dir/build.make examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.o.provides.build
.PHONY : examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.o.provides

examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.o.provides.build: examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.o

# Object files for target ex_font_justify
ex_font_justify_OBJECTS = \
"CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o" \
"CMakeFiles/ex_font_justify.dir/nihgui.cpp.o"

# External object files for target ex_font_justify
ex_font_justify_EXTERNAL_OBJECTS =

examples/ex_font_justify: examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o
examples/ex_font_justify: examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.o
examples/ex_font_justify: examples/CMakeFiles/ex_font_justify.dir/build.make
examples/ex_font_justify: lib/liballegro_font.so.5.0.10
examples/ex_font_justify: lib/liballegro_primitives.so.5.0.10
examples/ex_font_justify: lib/liballegro_image.so.5.0.10
examples/ex_font_justify: lib/liballegro_ttf.so.5.0.10
examples/ex_font_justify: lib/liballegro.so.5.0.10
examples/ex_font_justify: lib/liballegro_main.so.5.0.10
examples/ex_font_justify: lib/liballegro_dialog.so.5.0.10
examples/ex_font_justify: /usr/lib/x86_64-linux-gnu/libpng.so
examples/ex_font_justify: /usr/lib/x86_64-linux-gnu/libjpeg.so
examples/ex_font_justify: lib/liballegro_font.so.5.0.10
examples/ex_font_justify: /usr/lib/x86_64-linux-gnu/libfreetype.so
examples/ex_font_justify: /usr/lib/x86_64-linux-gnu/libz.so
examples/ex_font_justify: lib/liballegro.so.5.0.10
examples/ex_font_justify: /usr/lib/x86_64-linux-gnu/libSM.so
examples/ex_font_justify: /usr/lib/x86_64-linux-gnu/libICE.so
examples/ex_font_justify: /usr/lib/x86_64-linux-gnu/libX11.so
examples/ex_font_justify: /usr/lib/x86_64-linux-gnu/libXext.so
examples/ex_font_justify: /usr/lib/x86_64-linux-gnu/libGL.so
examples/ex_font_justify: /usr/lib/x86_64-linux-gnu/libGLU.so
examples/ex_font_justify: examples/CMakeFiles/ex_font_justify.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ex_font_justify"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ex_font_justify.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/ex_font_justify.dir/build: examples/ex_font_justify
.PHONY : examples/CMakeFiles/ex_font_justify.dir/build

examples/CMakeFiles/ex_font_justify.dir/requires: examples/CMakeFiles/ex_font_justify.dir/ex_font_justify.cpp.o.requires
examples/CMakeFiles/ex_font_justify.dir/requires: examples/CMakeFiles/ex_font_justify.dir/nihgui.cpp.o.requires
.PHONY : examples/CMakeFiles/ex_font_justify.dir/requires

examples/CMakeFiles/ex_font_justify.dir/clean:
	cd /home/saisrini/Downloads/allegro-5.0.10/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/ex_font_justify.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/ex_font_justify.dir/clean

examples/CMakeFiles/ex_font_justify.dir/depend:
	cd /home/saisrini/Downloads/allegro-5.0.10/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/saisrini/Downloads/allegro-5.0.10 /home/saisrini/Downloads/allegro-5.0.10/examples /home/saisrini/Downloads/allegro-5.0.10/build /home/saisrini/Downloads/allegro-5.0.10/build/examples /home/saisrini/Downloads/allegro-5.0.10/build/examples/CMakeFiles/ex_font_justify.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/ex_font_justify.dir/depend

