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
include addons/image/CMakeFiles/allegro_image.dir/depend.make

# Include the progress variables for this target.
include addons/image/CMakeFiles/allegro_image.dir/progress.make

# Include the compile flags for this target's objects.
include addons/image/CMakeFiles/allegro_image.dir/flags.make

addons/image/CMakeFiles/allegro_image.dir/bmp.c.o: addons/image/CMakeFiles/allegro_image.dir/flags.make
addons/image/CMakeFiles/allegro_image.dir/bmp.c.o: ../addons/image/bmp.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/saisrini/Downloads/allegro-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object addons/image/CMakeFiles/allegro_image.dir/bmp.c.o"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/allegro_image.dir/bmp.c.o   -c /home/saisrini/Downloads/allegro-5.0.10/addons/image/bmp.c

addons/image/CMakeFiles/allegro_image.dir/bmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_image.dir/bmp.c.i"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/saisrini/Downloads/allegro-5.0.10/addons/image/bmp.c > CMakeFiles/allegro_image.dir/bmp.c.i

addons/image/CMakeFiles/allegro_image.dir/bmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_image.dir/bmp.c.s"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/saisrini/Downloads/allegro-5.0.10/addons/image/bmp.c -o CMakeFiles/allegro_image.dir/bmp.c.s

addons/image/CMakeFiles/allegro_image.dir/bmp.c.o.requires:
.PHONY : addons/image/CMakeFiles/allegro_image.dir/bmp.c.o.requires

addons/image/CMakeFiles/allegro_image.dir/bmp.c.o.provides: addons/image/CMakeFiles/allegro_image.dir/bmp.c.o.requires
	$(MAKE) -f addons/image/CMakeFiles/allegro_image.dir/build.make addons/image/CMakeFiles/allegro_image.dir/bmp.c.o.provides.build
.PHONY : addons/image/CMakeFiles/allegro_image.dir/bmp.c.o.provides

addons/image/CMakeFiles/allegro_image.dir/bmp.c.o.provides.build: addons/image/CMakeFiles/allegro_image.dir/bmp.c.o

addons/image/CMakeFiles/allegro_image.dir/iio.c.o: addons/image/CMakeFiles/allegro_image.dir/flags.make
addons/image/CMakeFiles/allegro_image.dir/iio.c.o: ../addons/image/iio.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/saisrini/Downloads/allegro-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object addons/image/CMakeFiles/allegro_image.dir/iio.c.o"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/allegro_image.dir/iio.c.o   -c /home/saisrini/Downloads/allegro-5.0.10/addons/image/iio.c

addons/image/CMakeFiles/allegro_image.dir/iio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_image.dir/iio.c.i"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/saisrini/Downloads/allegro-5.0.10/addons/image/iio.c > CMakeFiles/allegro_image.dir/iio.c.i

addons/image/CMakeFiles/allegro_image.dir/iio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_image.dir/iio.c.s"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/saisrini/Downloads/allegro-5.0.10/addons/image/iio.c -o CMakeFiles/allegro_image.dir/iio.c.s

addons/image/CMakeFiles/allegro_image.dir/iio.c.o.requires:
.PHONY : addons/image/CMakeFiles/allegro_image.dir/iio.c.o.requires

addons/image/CMakeFiles/allegro_image.dir/iio.c.o.provides: addons/image/CMakeFiles/allegro_image.dir/iio.c.o.requires
	$(MAKE) -f addons/image/CMakeFiles/allegro_image.dir/build.make addons/image/CMakeFiles/allegro_image.dir/iio.c.o.provides.build
.PHONY : addons/image/CMakeFiles/allegro_image.dir/iio.c.o.provides

addons/image/CMakeFiles/allegro_image.dir/iio.c.o.provides.build: addons/image/CMakeFiles/allegro_image.dir/iio.c.o

addons/image/CMakeFiles/allegro_image.dir/pcx.c.o: addons/image/CMakeFiles/allegro_image.dir/flags.make
addons/image/CMakeFiles/allegro_image.dir/pcx.c.o: ../addons/image/pcx.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/saisrini/Downloads/allegro-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object addons/image/CMakeFiles/allegro_image.dir/pcx.c.o"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/allegro_image.dir/pcx.c.o   -c /home/saisrini/Downloads/allegro-5.0.10/addons/image/pcx.c

addons/image/CMakeFiles/allegro_image.dir/pcx.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_image.dir/pcx.c.i"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/saisrini/Downloads/allegro-5.0.10/addons/image/pcx.c > CMakeFiles/allegro_image.dir/pcx.c.i

addons/image/CMakeFiles/allegro_image.dir/pcx.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_image.dir/pcx.c.s"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/saisrini/Downloads/allegro-5.0.10/addons/image/pcx.c -o CMakeFiles/allegro_image.dir/pcx.c.s

addons/image/CMakeFiles/allegro_image.dir/pcx.c.o.requires:
.PHONY : addons/image/CMakeFiles/allegro_image.dir/pcx.c.o.requires

addons/image/CMakeFiles/allegro_image.dir/pcx.c.o.provides: addons/image/CMakeFiles/allegro_image.dir/pcx.c.o.requires
	$(MAKE) -f addons/image/CMakeFiles/allegro_image.dir/build.make addons/image/CMakeFiles/allegro_image.dir/pcx.c.o.provides.build
.PHONY : addons/image/CMakeFiles/allegro_image.dir/pcx.c.o.provides

addons/image/CMakeFiles/allegro_image.dir/pcx.c.o.provides.build: addons/image/CMakeFiles/allegro_image.dir/pcx.c.o

addons/image/CMakeFiles/allegro_image.dir/tga.c.o: addons/image/CMakeFiles/allegro_image.dir/flags.make
addons/image/CMakeFiles/allegro_image.dir/tga.c.o: ../addons/image/tga.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/saisrini/Downloads/allegro-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object addons/image/CMakeFiles/allegro_image.dir/tga.c.o"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/allegro_image.dir/tga.c.o   -c /home/saisrini/Downloads/allegro-5.0.10/addons/image/tga.c

addons/image/CMakeFiles/allegro_image.dir/tga.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_image.dir/tga.c.i"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/saisrini/Downloads/allegro-5.0.10/addons/image/tga.c > CMakeFiles/allegro_image.dir/tga.c.i

addons/image/CMakeFiles/allegro_image.dir/tga.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_image.dir/tga.c.s"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/saisrini/Downloads/allegro-5.0.10/addons/image/tga.c -o CMakeFiles/allegro_image.dir/tga.c.s

addons/image/CMakeFiles/allegro_image.dir/tga.c.o.requires:
.PHONY : addons/image/CMakeFiles/allegro_image.dir/tga.c.o.requires

addons/image/CMakeFiles/allegro_image.dir/tga.c.o.provides: addons/image/CMakeFiles/allegro_image.dir/tga.c.o.requires
	$(MAKE) -f addons/image/CMakeFiles/allegro_image.dir/build.make addons/image/CMakeFiles/allegro_image.dir/tga.c.o.provides.build
.PHONY : addons/image/CMakeFiles/allegro_image.dir/tga.c.o.provides

addons/image/CMakeFiles/allegro_image.dir/tga.c.o.provides.build: addons/image/CMakeFiles/allegro_image.dir/tga.c.o

addons/image/CMakeFiles/allegro_image.dir/png.c.o: addons/image/CMakeFiles/allegro_image.dir/flags.make
addons/image/CMakeFiles/allegro_image.dir/png.c.o: ../addons/image/png.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/saisrini/Downloads/allegro-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object addons/image/CMakeFiles/allegro_image.dir/png.c.o"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/allegro_image.dir/png.c.o   -c /home/saisrini/Downloads/allegro-5.0.10/addons/image/png.c

addons/image/CMakeFiles/allegro_image.dir/png.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_image.dir/png.c.i"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/saisrini/Downloads/allegro-5.0.10/addons/image/png.c > CMakeFiles/allegro_image.dir/png.c.i

addons/image/CMakeFiles/allegro_image.dir/png.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_image.dir/png.c.s"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/saisrini/Downloads/allegro-5.0.10/addons/image/png.c -o CMakeFiles/allegro_image.dir/png.c.s

addons/image/CMakeFiles/allegro_image.dir/png.c.o.requires:
.PHONY : addons/image/CMakeFiles/allegro_image.dir/png.c.o.requires

addons/image/CMakeFiles/allegro_image.dir/png.c.o.provides: addons/image/CMakeFiles/allegro_image.dir/png.c.o.requires
	$(MAKE) -f addons/image/CMakeFiles/allegro_image.dir/build.make addons/image/CMakeFiles/allegro_image.dir/png.c.o.provides.build
.PHONY : addons/image/CMakeFiles/allegro_image.dir/png.c.o.provides

addons/image/CMakeFiles/allegro_image.dir/png.c.o.provides.build: addons/image/CMakeFiles/allegro_image.dir/png.c.o

addons/image/CMakeFiles/allegro_image.dir/jpg.c.o: addons/image/CMakeFiles/allegro_image.dir/flags.make
addons/image/CMakeFiles/allegro_image.dir/jpg.c.o: ../addons/image/jpg.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/saisrini/Downloads/allegro-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object addons/image/CMakeFiles/allegro_image.dir/jpg.c.o"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/allegro_image.dir/jpg.c.o   -c /home/saisrini/Downloads/allegro-5.0.10/addons/image/jpg.c

addons/image/CMakeFiles/allegro_image.dir/jpg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_image.dir/jpg.c.i"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/saisrini/Downloads/allegro-5.0.10/addons/image/jpg.c > CMakeFiles/allegro_image.dir/jpg.c.i

addons/image/CMakeFiles/allegro_image.dir/jpg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_image.dir/jpg.c.s"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/saisrini/Downloads/allegro-5.0.10/addons/image/jpg.c -o CMakeFiles/allegro_image.dir/jpg.c.s

addons/image/CMakeFiles/allegro_image.dir/jpg.c.o.requires:
.PHONY : addons/image/CMakeFiles/allegro_image.dir/jpg.c.o.requires

addons/image/CMakeFiles/allegro_image.dir/jpg.c.o.provides: addons/image/CMakeFiles/allegro_image.dir/jpg.c.o.requires
	$(MAKE) -f addons/image/CMakeFiles/allegro_image.dir/build.make addons/image/CMakeFiles/allegro_image.dir/jpg.c.o.provides.build
.PHONY : addons/image/CMakeFiles/allegro_image.dir/jpg.c.o.provides

addons/image/CMakeFiles/allegro_image.dir/jpg.c.o.provides.build: addons/image/CMakeFiles/allegro_image.dir/jpg.c.o

# Object files for target allegro_image
allegro_image_OBJECTS = \
"CMakeFiles/allegro_image.dir/bmp.c.o" \
"CMakeFiles/allegro_image.dir/iio.c.o" \
"CMakeFiles/allegro_image.dir/pcx.c.o" \
"CMakeFiles/allegro_image.dir/tga.c.o" \
"CMakeFiles/allegro_image.dir/png.c.o" \
"CMakeFiles/allegro_image.dir/jpg.c.o"

# External object files for target allegro_image
allegro_image_EXTERNAL_OBJECTS =

lib/liballegro_image.so.5.0.10: addons/image/CMakeFiles/allegro_image.dir/bmp.c.o
lib/liballegro_image.so.5.0.10: addons/image/CMakeFiles/allegro_image.dir/iio.c.o
lib/liballegro_image.so.5.0.10: addons/image/CMakeFiles/allegro_image.dir/pcx.c.o
lib/liballegro_image.so.5.0.10: addons/image/CMakeFiles/allegro_image.dir/tga.c.o
lib/liballegro_image.so.5.0.10: addons/image/CMakeFiles/allegro_image.dir/png.c.o
lib/liballegro_image.so.5.0.10: addons/image/CMakeFiles/allegro_image.dir/jpg.c.o
lib/liballegro_image.so.5.0.10: addons/image/CMakeFiles/allegro_image.dir/build.make
lib/liballegro_image.so.5.0.10: lib/liballegro.so.5.0.10
lib/liballegro_image.so.5.0.10: /usr/lib/x86_64-linux-gnu/libpng.so
lib/liballegro_image.so.5.0.10: /usr/lib/x86_64-linux-gnu/libz.so
lib/liballegro_image.so.5.0.10: /usr/lib/x86_64-linux-gnu/libjpeg.so
lib/liballegro_image.so.5.0.10: /usr/lib/x86_64-linux-gnu/libSM.so
lib/liballegro_image.so.5.0.10: /usr/lib/x86_64-linux-gnu/libICE.so
lib/liballegro_image.so.5.0.10: /usr/lib/x86_64-linux-gnu/libX11.so
lib/liballegro_image.so.5.0.10: /usr/lib/x86_64-linux-gnu/libXext.so
lib/liballegro_image.so.5.0.10: /usr/lib/x86_64-linux-gnu/libGL.so
lib/liballegro_image.so.5.0.10: /usr/lib/x86_64-linux-gnu/libGLU.so
lib/liballegro_image.so.5.0.10: addons/image/CMakeFiles/allegro_image.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../lib/liballegro_image.so"
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/allegro_image.dir/link.txt --verbose=$(VERBOSE)
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/liballegro_image.so.5.0.10 ../../lib/liballegro_image.so.5.0 ../../lib/liballegro_image.so

lib/liballegro_image.so.5.0: lib/liballegro_image.so.5.0.10

lib/liballegro_image.so: lib/liballegro_image.so.5.0.10

# Rule to build all files generated by this target.
addons/image/CMakeFiles/allegro_image.dir/build: lib/liballegro_image.so
.PHONY : addons/image/CMakeFiles/allegro_image.dir/build

addons/image/CMakeFiles/allegro_image.dir/requires: addons/image/CMakeFiles/allegro_image.dir/bmp.c.o.requires
addons/image/CMakeFiles/allegro_image.dir/requires: addons/image/CMakeFiles/allegro_image.dir/iio.c.o.requires
addons/image/CMakeFiles/allegro_image.dir/requires: addons/image/CMakeFiles/allegro_image.dir/pcx.c.o.requires
addons/image/CMakeFiles/allegro_image.dir/requires: addons/image/CMakeFiles/allegro_image.dir/tga.c.o.requires
addons/image/CMakeFiles/allegro_image.dir/requires: addons/image/CMakeFiles/allegro_image.dir/png.c.o.requires
addons/image/CMakeFiles/allegro_image.dir/requires: addons/image/CMakeFiles/allegro_image.dir/jpg.c.o.requires
.PHONY : addons/image/CMakeFiles/allegro_image.dir/requires

addons/image/CMakeFiles/allegro_image.dir/clean:
	cd /home/saisrini/Downloads/allegro-5.0.10/build/addons/image && $(CMAKE_COMMAND) -P CMakeFiles/allegro_image.dir/cmake_clean.cmake
.PHONY : addons/image/CMakeFiles/allegro_image.dir/clean

addons/image/CMakeFiles/allegro_image.dir/depend:
	cd /home/saisrini/Downloads/allegro-5.0.10/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/saisrini/Downloads/allegro-5.0.10 /home/saisrini/Downloads/allegro-5.0.10/addons/image /home/saisrini/Downloads/allegro-5.0.10/build /home/saisrini/Downloads/allegro-5.0.10/build/addons/image /home/saisrini/Downloads/allegro-5.0.10/build/addons/image/CMakeFiles/allegro_image.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : addons/image/CMakeFiles/allegro_image.dir/depend

