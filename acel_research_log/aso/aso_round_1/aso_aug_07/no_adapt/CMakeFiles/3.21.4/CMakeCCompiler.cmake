set(CMAKE_C_COMPILER "/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/mpi/intel64/bin/mpicc")
set(CMAKE_C_COMPILER_ARG1 "")
set(CMAKE_C_COMPILER_ID "Intel")
set(CMAKE_C_COMPILER_VERSION "19.1.3.20200925")
set(CMAKE_C_COMPILER_VERSION_INTERNAL "")
set(CMAKE_C_COMPILER_WRAPPER "")
set(CMAKE_C_STANDARD_COMPUTED_DEFAULT "11")
set(CMAKE_C_COMPILE_FEATURES "c_std_90;c_function_prototypes;c_std_99;c_restrict;c_variadic_macros;c_std_11;c_static_assert")
set(CMAKE_C90_COMPILE_FEATURES "c_std_90;c_function_prototypes")
set(CMAKE_C99_COMPILE_FEATURES "c_std_99;c_restrict;c_variadic_macros")
set(CMAKE_C11_COMPILE_FEATURES "c_std_11;c_static_assert")
set(CMAKE_C17_COMPILE_FEATURES "")
set(CMAKE_C23_COMPILE_FEATURES "")

set(CMAKE_C_PLATFORM_ID "Linux")
set(CMAKE_C_SIMULATE_ID "GNU")
set(CMAKE_C_COMPILER_FRONTEND_VARIANT "")
set(CMAKE_C_SIMULATE_VERSION "7.4.0")




set(CMAKE_AR "/usr/bin/ar")
set(CMAKE_C_COMPILER_AR "")
set(CMAKE_RANLIB "/usr/bin/ranlib")
set(CMAKE_C_COMPILER_RANLIB "")
set(CMAKE_LINKER "/usr/bin/ld")
set(CMAKE_MT "")
set(CMAKE_COMPILER_IS_GNUCC )
set(CMAKE_C_COMPILER_LOADED 1)
set(CMAKE_C_COMPILER_WORKS TRUE)
set(CMAKE_C_ABI_COMPILED TRUE)
set(CMAKE_COMPILER_IS_MINGW )
set(CMAKE_COMPILER_IS_CYGWIN )
if(CMAKE_COMPILER_IS_CYGWIN)
  set(CYGWIN 1)
  set(UNIX 1)
endif()

set(CMAKE_C_COMPILER_ENV_VAR "CC")

if(CMAKE_COMPILER_IS_MINGW)
  set(MINGW 1)
endif()
set(CMAKE_C_COMPILER_ID_RUN 1)
set(CMAKE_C_SOURCE_FILE_EXTENSIONS c;m)
set(CMAKE_C_IGNORE_EXTENSIONS h;H;o;O;obj;OBJ;def;DEF;rc;RC)
set(CMAKE_C_LINKER_PREFERENCE 10)

# Save compiler ABI information.
set(CMAKE_C_SIZEOF_DATA_PTR "8")
set(CMAKE_C_COMPILER_ABI "ELF")
set(CMAKE_C_BYTE_ORDER "LITTLE_ENDIAN")
set(CMAKE_C_LIBRARY_ARCHITECTURE "")

if(CMAKE_C_SIZEOF_DATA_PTR)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_C_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_C_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_C_COMPILER_ABI}")
endif()

if(CMAKE_C_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()

set(CMAKE_C_CL_SHOWINCLUDES_PREFIX "")
if(CMAKE_C_CL_SHOWINCLUDES_PREFIX)
  set(CMAKE_CL_SHOWINCLUDES_PREFIX "${CMAKE_C_CL_SHOWINCLUDES_PREFIX}")
endif()





set(CMAKE_C_IMPLICIT_INCLUDE_DIRECTORIES "/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/mpi/intel64/include;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/pstl/include;/scinet/niagara/software/2019b/opt/intel-2020u4-intelmpi-2020u4/hdf5/1.10.7/include;/scinet/niagara/software/2019b/opt/intel-2020u4-intelmpi-2020u4/boost/1.78.0/include;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/ipp/include;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/mkl/include;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/pstl/stdlib;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/tbb/include;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/daal/include;/gpfs/fs1/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/compiler/include/intel64;/gpfs/fs1/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/compiler/include/icc;/gpfs/fs1/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/compiler/include;/usr/local/include;/gpfs/fs1/scinet/niagara/software/2019b/core/lib/gcc/x86_64-pc-linux-gnu/7.4.0/include;/gpfs/fs1/scinet/niagara/software/2019b/core/lib/gcc/x86_64-pc-linux-gnu/7.4.0/include-fixed;/gpfs/fs1/scinet/niagara/software/2019b/core/include;/usr/include")
set(CMAKE_C_IMPLICIT_LINK_LIBRARIES "mpifort;mpi;dl;rt;pthread;imf;svml;irng;m;ipgo;decimal;cilkrts;stdc++;gcc;gcc_s;irc;svml;c;gcc;gcc_s;irc_s;dl;c")
set(CMAKE_C_IMPLICIT_LINK_DIRECTORIES "/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/mpi/intel64/lib/release;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/mpi/intel64/lib;/scinet/niagara/software/2019b/opt/intel-2020u4-intelmpi-2020u4/hdf5/1.10.7/lib;/scinet/niagara/software/2019b/opt/intel-2020u4-intelmpi-2020u4/boost/1.78.0/lib;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/mpi/intel64/libfabric/lib;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/ipp/lib/intel64;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/compiler/lib/intel64_lin;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/mkl/lib/intel64_lin;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/tbb/lib/intel64/gcc4.8;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/daal/lib/intel64_lin;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/tbb/lib/intel64_lin/gcc4.4;/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/tbb/lib/intel64_lin/gcc4.8;/gpfs/fs1/scinet/intel/psxe/2020u4/compilers_and_libraries_2020.4.304/linux/compiler/lib/intel64_lin;/gpfs/fs1/scinet/niagara/software/2019b/core/lib/gcc/x86_64-pc-linux-gnu/7.4.0;/gpfs/fs1/scinet/niagara/software/2019b/core/lib/gcc;/gpfs/fs1/scinet/niagara/software/2019b/core/lib64;/lib64;/usr/lib64;/gpfs/fs1/scinet/niagara/software/2019b/core/lib;/lib;/usr/lib")
set(CMAKE_C_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")