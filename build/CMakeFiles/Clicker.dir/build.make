# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/d4rkn00dl3s/Documents/cpp/clicker_cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/build

# Include any dependencies generated for this target.
include CMakeFiles/Clicker.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Clicker.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Clicker.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Clicker.dir/flags.make

CMakeFiles/Clicker.dir/main.cpp.o: CMakeFiles/Clicker.dir/flags.make
CMakeFiles/Clicker.dir/main.cpp.o: /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/main.cpp
CMakeFiles/Clicker.dir/main.cpp.o: CMakeFiles/Clicker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/d4rkn00dl3s/Documents/cpp/clicker_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Clicker.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clicker.dir/main.cpp.o -MF CMakeFiles/Clicker.dir/main.cpp.o.d -o CMakeFiles/Clicker.dir/main.cpp.o -c /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/main.cpp

CMakeFiles/Clicker.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Clicker.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/main.cpp > CMakeFiles/Clicker.dir/main.cpp.i

CMakeFiles/Clicker.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Clicker.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/main.cpp -o CMakeFiles/Clicker.dir/main.cpp.s

CMakeFiles/Clicker.dir/ClickableSprite.cpp.o: CMakeFiles/Clicker.dir/flags.make
CMakeFiles/Clicker.dir/ClickableSprite.cpp.o: /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/ClickableSprite.cpp
CMakeFiles/Clicker.dir/ClickableSprite.cpp.o: CMakeFiles/Clicker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/d4rkn00dl3s/Documents/cpp/clicker_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Clicker.dir/ClickableSprite.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clicker.dir/ClickableSprite.cpp.o -MF CMakeFiles/Clicker.dir/ClickableSprite.cpp.o.d -o CMakeFiles/Clicker.dir/ClickableSprite.cpp.o -c /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/ClickableSprite.cpp

CMakeFiles/Clicker.dir/ClickableSprite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Clicker.dir/ClickableSprite.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/ClickableSprite.cpp > CMakeFiles/Clicker.dir/ClickableSprite.cpp.i

CMakeFiles/Clicker.dir/ClickableSprite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Clicker.dir/ClickableSprite.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/ClickableSprite.cpp -o CMakeFiles/Clicker.dir/ClickableSprite.cpp.s

CMakeFiles/Clicker.dir/Score.cpp.o: CMakeFiles/Clicker.dir/flags.make
CMakeFiles/Clicker.dir/Score.cpp.o: /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Score.cpp
CMakeFiles/Clicker.dir/Score.cpp.o: CMakeFiles/Clicker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/d4rkn00dl3s/Documents/cpp/clicker_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Clicker.dir/Score.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clicker.dir/Score.cpp.o -MF CMakeFiles/Clicker.dir/Score.cpp.o.d -o CMakeFiles/Clicker.dir/Score.cpp.o -c /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Score.cpp

CMakeFiles/Clicker.dir/Score.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Clicker.dir/Score.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Score.cpp > CMakeFiles/Clicker.dir/Score.cpp.i

CMakeFiles/Clicker.dir/Score.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Clicker.dir/Score.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Score.cpp -o CMakeFiles/Clicker.dir/Score.cpp.s

CMakeFiles/Clicker.dir/Background.cpp.o: CMakeFiles/Clicker.dir/flags.make
CMakeFiles/Clicker.dir/Background.cpp.o: /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Background.cpp
CMakeFiles/Clicker.dir/Background.cpp.o: CMakeFiles/Clicker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/d4rkn00dl3s/Documents/cpp/clicker_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Clicker.dir/Background.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clicker.dir/Background.cpp.o -MF CMakeFiles/Clicker.dir/Background.cpp.o.d -o CMakeFiles/Clicker.dir/Background.cpp.o -c /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Background.cpp

CMakeFiles/Clicker.dir/Background.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Clicker.dir/Background.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Background.cpp > CMakeFiles/Clicker.dir/Background.cpp.i

CMakeFiles/Clicker.dir/Background.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Clicker.dir/Background.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Background.cpp -o CMakeFiles/Clicker.dir/Background.cpp.s

CMakeFiles/Clicker.dir/Game.cpp.o: CMakeFiles/Clicker.dir/flags.make
CMakeFiles/Clicker.dir/Game.cpp.o: /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Game.cpp
CMakeFiles/Clicker.dir/Game.cpp.o: CMakeFiles/Clicker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/d4rkn00dl3s/Documents/cpp/clicker_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Clicker.dir/Game.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clicker.dir/Game.cpp.o -MF CMakeFiles/Clicker.dir/Game.cpp.o.d -o CMakeFiles/Clicker.dir/Game.cpp.o -c /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Game.cpp

CMakeFiles/Clicker.dir/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Clicker.dir/Game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Game.cpp > CMakeFiles/Clicker.dir/Game.cpp.i

CMakeFiles/Clicker.dir/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Clicker.dir/Game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Game.cpp -o CMakeFiles/Clicker.dir/Game.cpp.s

CMakeFiles/Clicker.dir/Upgradebutton.cpp.o: CMakeFiles/Clicker.dir/flags.make
CMakeFiles/Clicker.dir/Upgradebutton.cpp.o: /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Upgradebutton.cpp
CMakeFiles/Clicker.dir/Upgradebutton.cpp.o: CMakeFiles/Clicker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/d4rkn00dl3s/Documents/cpp/clicker_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Clicker.dir/Upgradebutton.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Clicker.dir/Upgradebutton.cpp.o -MF CMakeFiles/Clicker.dir/Upgradebutton.cpp.o.d -o CMakeFiles/Clicker.dir/Upgradebutton.cpp.o -c /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Upgradebutton.cpp

CMakeFiles/Clicker.dir/Upgradebutton.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Clicker.dir/Upgradebutton.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Upgradebutton.cpp > CMakeFiles/Clicker.dir/Upgradebutton.cpp.i

CMakeFiles/Clicker.dir/Upgradebutton.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Clicker.dir/Upgradebutton.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/Upgradebutton.cpp -o CMakeFiles/Clicker.dir/Upgradebutton.cpp.s

# Object files for target Clicker
Clicker_OBJECTS = \
"CMakeFiles/Clicker.dir/main.cpp.o" \
"CMakeFiles/Clicker.dir/ClickableSprite.cpp.o" \
"CMakeFiles/Clicker.dir/Score.cpp.o" \
"CMakeFiles/Clicker.dir/Background.cpp.o" \
"CMakeFiles/Clicker.dir/Game.cpp.o" \
"CMakeFiles/Clicker.dir/Upgradebutton.cpp.o"

# External object files for target Clicker
Clicker_EXTERNAL_OBJECTS =

Clicker: CMakeFiles/Clicker.dir/main.cpp.o
Clicker: CMakeFiles/Clicker.dir/ClickableSprite.cpp.o
Clicker: CMakeFiles/Clicker.dir/Score.cpp.o
Clicker: CMakeFiles/Clicker.dir/Background.cpp.o
Clicker: CMakeFiles/Clicker.dir/Game.cpp.o
Clicker: CMakeFiles/Clicker.dir/Upgradebutton.cpp.o
Clicker: CMakeFiles/Clicker.dir/build.make
Clicker: /usr/lib/x86_64-linux-gnu/libsfml-graphics.so.2.6.1
Clicker: /usr/lib/x86_64-linux-gnu/libsfml-window.so.2.6.1
Clicker: /usr/lib/x86_64-linux-gnu/libsfml-system.so.2.6.1
Clicker: CMakeFiles/Clicker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/d4rkn00dl3s/Documents/cpp/clicker_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable Clicker"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Clicker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Clicker.dir/build: Clicker
.PHONY : CMakeFiles/Clicker.dir/build

CMakeFiles/Clicker.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Clicker.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Clicker.dir/clean

CMakeFiles/Clicker.dir/depend:
	cd /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/d4rkn00dl3s/Documents/cpp/clicker_cpp /home/d4rkn00dl3s/Documents/cpp/clicker_cpp /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/build /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/build /home/d4rkn00dl3s/Documents/cpp/clicker_cpp/build/CMakeFiles/Clicker.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Clicker.dir/depend

