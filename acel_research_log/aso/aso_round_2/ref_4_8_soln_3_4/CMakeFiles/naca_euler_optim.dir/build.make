# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /gpfs/fs1/scinet/niagara/software/2018a/opt/base/cmake/3.10.3/bin/cmake

# The command to remove a file.
RM = /gpfs/fs1/scinet/niagara/software/2018a/opt/base/cmake/3.10.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /scratch/m/myano/qed/aps_cases/naca_euler_optim

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /scratch/m/myano/qed/aps_cases/naca_euler_optim/build

# Include any dependencies generated for this target.
include CMakeFiles/naca_euler_optim.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/naca_euler_optim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/naca_euler_optim.dir/flags.make

CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o: CMakeFiles/naca_euler_optim.dir/flags.make
CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o: ../naca_euler_optim.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/scratch/m/myano/qed/aps_cases/naca_euler_optim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o"
	/scinet/niagara/intel/2018.2/compilers_and_libraries_2018.2.199/linux/mpi/intel64/bin/mpicxx  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o -c /scratch/m/myano/qed/aps_cases/naca_euler_optim/naca_euler_optim.cpp

CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.i"
	/scinet/niagara/intel/2018.2/compilers_and_libraries_2018.2.199/linux/mpi/intel64/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /scratch/m/myano/qed/aps_cases/naca_euler_optim/naca_euler_optim.cpp > CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.i

CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.s"
	/scinet/niagara/intel/2018.2/compilers_and_libraries_2018.2.199/linux/mpi/intel64/bin/mpicxx $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /scratch/m/myano/qed/aps_cases/naca_euler_optim/naca_euler_optim.cpp -o CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.s

CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o.requires:

.PHONY : CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o.requires

CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o.provides: CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o.requires
	$(MAKE) -f CMakeFiles/naca_euler_optim.dir/build.make CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o.provides.build
.PHONY : CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o.provides

CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o.provides.build: CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o


# Object files for target naca_euler_optim
naca_euler_optim_OBJECTS = \
"CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o"

# External object files for target naca_euler_optim
naca_euler_optim_EXTERNAL_OBJECTS =

naca_euler_optim: CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o
naca_euler_optim: CMakeFiles/naca_euler_optim.dir/build.make
naca_euler_optim: ~/git/aps/build_mpi/lib/libaps.so
naca_euler_optim: /scinet/niagara/intel/2018.2/compilers_and_libraries_2018.2.199/linux/mkl/lib/intel64/libmkl_intel_lp64.so
naca_euler_optim: /scinet/niagara/intel/2018.2/compilers_and_libraries_2018.2.199/linux/mkl/lib/intel64/libmkl_core.so
naca_euler_optim: /scinet/niagara/intel/2018.2/compilers_and_libraries_2018.2.199/linux/mkl/lib/intel64/libmkl_sequential.so
naca_euler_optim: /scinet/niagara/software/2018a/opt/intel-2018.2-intelmpi-2018.2/boost/1.67.0/lib/libboost_serialization.so
naca_euler_optim: CMakeFiles/naca_euler_optim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/scratch/m/myano/qed/aps_cases/naca_euler_optim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable naca_euler_optim"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/naca_euler_optim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/naca_euler_optim.dir/build: naca_euler_optim

.PHONY : CMakeFiles/naca_euler_optim.dir/build

CMakeFiles/naca_euler_optim.dir/requires: CMakeFiles/naca_euler_optim.dir/naca_euler_optim.cpp.o.requires

.PHONY : CMakeFiles/naca_euler_optim.dir/requires

CMakeFiles/naca_euler_optim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/naca_euler_optim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/naca_euler_optim.dir/clean

CMakeFiles/naca_euler_optim.dir/depend:
	cd /scratch/m/myano/qed/aps_cases/naca_euler_optim/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /scratch/m/myano/qed/aps_cases/naca_euler_optim /scratch/m/myano/qed/aps_cases/naca_euler_optim /scratch/m/myano/qed/aps_cases/naca_euler_optim/build /scratch/m/myano/qed/aps_cases/naca_euler_optim/build /scratch/m/myano/qed/aps_cases/naca_euler_optim/build/CMakeFiles/naca_euler_optim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/naca_euler_optim.dir/depend

