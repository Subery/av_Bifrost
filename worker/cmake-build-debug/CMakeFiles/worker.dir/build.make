# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/admin/go/src/github.com/Bifrost/worker

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/admin/go/src/github.com/Bifrost/worker/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/worker.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/worker.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/worker.dir/flags.make

CMakeFiles/worker.dir/src/rtc/udp_router.cpp.o: CMakeFiles/worker.dir/flags.make
CMakeFiles/worker.dir/src/rtc/udp_router.cpp.o: ../src/rtc/udp_router.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/go/src/github.com/Bifrost/worker/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/worker.dir/src/rtc/udp_router.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/worker.dir/src/rtc/udp_router.cpp.o -c /Users/admin/go/src/github.com/Bifrost/worker/src/rtc/udp_router.cpp

CMakeFiles/worker.dir/src/rtc/udp_router.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worker.dir/src/rtc/udp_router.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/admin/go/src/github.com/Bifrost/worker/src/rtc/udp_router.cpp > CMakeFiles/worker.dir/src/rtc/udp_router.cpp.i

CMakeFiles/worker.dir/src/rtc/udp_router.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worker.dir/src/rtc/udp_router.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/admin/go/src/github.com/Bifrost/worker/src/rtc/udp_router.cpp -o CMakeFiles/worker.dir/src/rtc/udp_router.cpp.s

CMakeFiles/worker.dir/src/rtc/transport.cpp.o: CMakeFiles/worker.dir/flags.make
CMakeFiles/worker.dir/src/rtc/transport.cpp.o: ../src/rtc/transport.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/go/src/github.com/Bifrost/worker/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/worker.dir/src/rtc/transport.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/worker.dir/src/rtc/transport.cpp.o -c /Users/admin/go/src/github.com/Bifrost/worker/src/rtc/transport.cpp

CMakeFiles/worker.dir/src/rtc/transport.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worker.dir/src/rtc/transport.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/admin/go/src/github.com/Bifrost/worker/src/rtc/transport.cpp > CMakeFiles/worker.dir/src/rtc/transport.cpp.i

CMakeFiles/worker.dir/src/rtc/transport.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worker.dir/src/rtc/transport.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/admin/go/src/github.com/Bifrost/worker/src/rtc/transport.cpp -o CMakeFiles/worker.dir/src/rtc/transport.cpp.s

CMakeFiles/worker.dir/src/io/port_manager.cpp.o: CMakeFiles/worker.dir/flags.make
CMakeFiles/worker.dir/src/io/port_manager.cpp.o: ../src/io/port_manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/go/src/github.com/Bifrost/worker/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/worker.dir/src/io/port_manager.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/worker.dir/src/io/port_manager.cpp.o -c /Users/admin/go/src/github.com/Bifrost/worker/src/io/port_manager.cpp

CMakeFiles/worker.dir/src/io/port_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worker.dir/src/io/port_manager.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/admin/go/src/github.com/Bifrost/worker/src/io/port_manager.cpp > CMakeFiles/worker.dir/src/io/port_manager.cpp.i

CMakeFiles/worker.dir/src/io/port_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worker.dir/src/io/port_manager.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/admin/go/src/github.com/Bifrost/worker/src/io/port_manager.cpp -o CMakeFiles/worker.dir/src/io/port_manager.cpp.s

CMakeFiles/worker.dir/src/io/udp_socket.cpp.o: CMakeFiles/worker.dir/flags.make
CMakeFiles/worker.dir/src/io/udp_socket.cpp.o: ../src/io/udp_socket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/go/src/github.com/Bifrost/worker/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/worker.dir/src/io/udp_socket.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/worker.dir/src/io/udp_socket.cpp.o -c /Users/admin/go/src/github.com/Bifrost/worker/src/io/udp_socket.cpp

CMakeFiles/worker.dir/src/io/udp_socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worker.dir/src/io/udp_socket.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/admin/go/src/github.com/Bifrost/worker/src/io/udp_socket.cpp > CMakeFiles/worker.dir/src/io/udp_socket.cpp.i

CMakeFiles/worker.dir/src/io/udp_socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worker.dir/src/io/udp_socket.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/admin/go/src/github.com/Bifrost/worker/src/io/udp_socket.cpp -o CMakeFiles/worker.dir/src/io/udp_socket.cpp.s

CMakeFiles/worker.dir/src/io/uv_loop.cpp.o: CMakeFiles/worker.dir/flags.make
CMakeFiles/worker.dir/src/io/uv_loop.cpp.o: ../src/io/uv_loop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/go/src/github.com/Bifrost/worker/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/worker.dir/src/io/uv_loop.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/worker.dir/src/io/uv_loop.cpp.o -c /Users/admin/go/src/github.com/Bifrost/worker/src/io/uv_loop.cpp

CMakeFiles/worker.dir/src/io/uv_loop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worker.dir/src/io/uv_loop.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/admin/go/src/github.com/Bifrost/worker/src/io/uv_loop.cpp > CMakeFiles/worker.dir/src/io/uv_loop.cpp.i

CMakeFiles/worker.dir/src/io/uv_loop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worker.dir/src/io/uv_loop.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/admin/go/src/github.com/Bifrost/worker/src/io/uv_loop.cpp -o CMakeFiles/worker.dir/src/io/uv_loop.cpp.s

CMakeFiles/worker.dir/src/utils/setting.cpp.o: CMakeFiles/worker.dir/flags.make
CMakeFiles/worker.dir/src/utils/setting.cpp.o: ../src/utils/setting.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/go/src/github.com/Bifrost/worker/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/worker.dir/src/utils/setting.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/worker.dir/src/utils/setting.cpp.o -c /Users/admin/go/src/github.com/Bifrost/worker/src/utils/setting.cpp

CMakeFiles/worker.dir/src/utils/setting.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worker.dir/src/utils/setting.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/admin/go/src/github.com/Bifrost/worker/src/utils/setting.cpp > CMakeFiles/worker.dir/src/utils/setting.cpp.i

CMakeFiles/worker.dir/src/utils/setting.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worker.dir/src/utils/setting.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/admin/go/src/github.com/Bifrost/worker/src/utils/setting.cpp -o CMakeFiles/worker.dir/src/utils/setting.cpp.s

CMakeFiles/worker.dir/src/utils/utils.cpp.o: CMakeFiles/worker.dir/flags.make
CMakeFiles/worker.dir/src/utils/utils.cpp.o: ../src/utils/utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/go/src/github.com/Bifrost/worker/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/worker.dir/src/utils/utils.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/worker.dir/src/utils/utils.cpp.o -c /Users/admin/go/src/github.com/Bifrost/worker/src/utils/utils.cpp

CMakeFiles/worker.dir/src/utils/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worker.dir/src/utils/utils.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/admin/go/src/github.com/Bifrost/worker/src/utils/utils.cpp > CMakeFiles/worker.dir/src/utils/utils.cpp.i

CMakeFiles/worker.dir/src/utils/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worker.dir/src/utils/utils.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/admin/go/src/github.com/Bifrost/worker/src/utils/utils.cpp -o CMakeFiles/worker.dir/src/utils/utils.cpp.s

CMakeFiles/worker.dir/src/main.cpp.o: CMakeFiles/worker.dir/flags.make
CMakeFiles/worker.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/admin/go/src/github.com/Bifrost/worker/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/worker.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/worker.dir/src/main.cpp.o -c /Users/admin/go/src/github.com/Bifrost/worker/src/main.cpp

CMakeFiles/worker.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/worker.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/admin/go/src/github.com/Bifrost/worker/src/main.cpp > CMakeFiles/worker.dir/src/main.cpp.i

CMakeFiles/worker.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/worker.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/admin/go/src/github.com/Bifrost/worker/src/main.cpp -o CMakeFiles/worker.dir/src/main.cpp.s

# Object files for target worker
worker_OBJECTS = \
"CMakeFiles/worker.dir/src/rtc/udp_router.cpp.o" \
"CMakeFiles/worker.dir/src/rtc/transport.cpp.o" \
"CMakeFiles/worker.dir/src/io/port_manager.cpp.o" \
"CMakeFiles/worker.dir/src/io/udp_socket.cpp.o" \
"CMakeFiles/worker.dir/src/io/uv_loop.cpp.o" \
"CMakeFiles/worker.dir/src/utils/setting.cpp.o" \
"CMakeFiles/worker.dir/src/utils/utils.cpp.o" \
"CMakeFiles/worker.dir/src/main.cpp.o"

# External object files for target worker
worker_EXTERNAL_OBJECTS =

worker: CMakeFiles/worker.dir/src/rtc/udp_router.cpp.o
worker: CMakeFiles/worker.dir/src/rtc/transport.cpp.o
worker: CMakeFiles/worker.dir/src/io/port_manager.cpp.o
worker: CMakeFiles/worker.dir/src/io/udp_socket.cpp.o
worker: CMakeFiles/worker.dir/src/io/uv_loop.cpp.o
worker: CMakeFiles/worker.dir/src/utils/setting.cpp.o
worker: CMakeFiles/worker.dir/src/utils/utils.cpp.o
worker: CMakeFiles/worker.dir/src/main.cpp.o
worker: CMakeFiles/worker.dir/build.make
worker: CMakeFiles/worker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/admin/go/src/github.com/Bifrost/worker/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable worker"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/worker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/worker.dir/build: worker
.PHONY : CMakeFiles/worker.dir/build

CMakeFiles/worker.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/worker.dir/cmake_clean.cmake
.PHONY : CMakeFiles/worker.dir/clean

CMakeFiles/worker.dir/depend:
	cd /Users/admin/go/src/github.com/Bifrost/worker/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/admin/go/src/github.com/Bifrost/worker /Users/admin/go/src/github.com/Bifrost/worker /Users/admin/go/src/github.com/Bifrost/worker/cmake-build-debug /Users/admin/go/src/github.com/Bifrost/worker/cmake-build-debug /Users/admin/go/src/github.com/Bifrost/worker/cmake-build-debug/CMakeFiles/worker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/worker.dir/depend
