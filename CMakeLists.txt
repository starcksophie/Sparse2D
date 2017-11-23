cmake_minimum_required(VERSION 2.6)
include(FindPkgConfig)
include(ExternalProject)


project(sparse2d)

#
# Find libcfitsio
#
# Locate cfitsio using pkg-config
pkg_check_modules(CFITSIO REQUIRED cfitsio)
include_directories(${CFITSIO_INCLUDE_DIRS})
link_directories(${CFITSIO_LIBRARY_DIRS})

set(BIN_DIR  bin)
if (DEFINED ENV{ISAP})
  set(BIN_DIR  $ENV{ISAP}/bin)
endif  (DEFINED ENV{ISAP})


#
# Options
#
option( USE_FFTW "Use FFTW for Fourier transformation" OFF )
if(USE_FFTW)
  ExternalProject_Add( fftw3
    GIT_REPOSITORY "https://github.com/FFTW/fftw3.git"
    GIT_TAG "master"
    SOURCE_DIR "${CMAKE_SOURCE_DIR}/external/fftw3"
    INSTALL_DIR ""
    INSTALL_COMMAND ""
    CONFIGURE_COMMAND echo "Configure FFTW"
    BUILD_IN_SOURCE 1
    BUILD_COMMAND "${CMAKE_SOURCE_DIR}/external/fftw.cmd"
  )
  set(FFTW_CXX_FLAGS "-DUSE_FFTW")
  set(FFTW_LD_FLAGS "-L${CMAKE_SOURCE_DIR}/lib -lfftw3f_omp -lfftw3_omp -lfftw3f -lfftw3 -lm")
else(USE_FFTW)
  set(FFTW_CXX_FLAGS "")
  set(FFTW_LD_FLAGS "")
endif(USE_FFTW)

option( COMPILE_NFFT "Get and compile NFFT" OFF )
if(COMPILE_NFFT)
  if(USE_FFTW)
    set(BUILD_CMD  nfft_fftw.cmd)
  else(USE_FFTW)
    set(BUILD_CMD  nfft.cmd)
  endif(USE_FFTW)
  ExternalProject_Add( nfft
    GIT_REPOSITORY "https://github.com/NFFT/nfft.git"
    GIT_TAG "master"
    SOURCE_DIR "${CMAKE_SOURCE_DIR}/external/nfft"
    INSTALL_DIR ""
    INSTALL_COMMAND ""
    CONFIGURE_COMMAND echo "Configure NFFT"
    BUILD_IN_SOURCE 1
    BUILD_COMMAND "${CMAKE_SOURCE_DIR}/external/${BUILD_CMD}"
  )
endif(COMPILE_NFFT)

#
# Compilation flags
#
if(APPLE)
  set(CMAKE_CXX_FLAGS "-DMACOS -DNO_DISP_IO -w -g0 -O2 -fPIC -fomit-frame-pointer -fopenmp -Wno-write-strings -DNDEBUG ${FFTW_FLAGS}")
  message(STATUS "Using CXX Flags for Mac OSX: " ${CMAKE_SYSTEM})
else(APPLE)
  set(CMAKE_CXX_FLAGS_RELEASE "-DNO_DISP_IO -g0 -O2 -fPIC -fomit-frame-pointer -fopenmp -Wno-write-strings -DNDEBUG ${FFTW_FLAGS}")
  set(CMAKE_CXX_FLAGS_DEBUG "-DNO_DISP_IO -g -fPIC -fopenmp -Wno-write-strings ${FFTW_CXX_FLAGS}")
  message(STATUS "Using CXX Flags for " ${CMAKE_SYSTEM})
endif(APPLE)

#
# Build tools library
#
FILE(GLOB src_lib1  "${PROJECT_SOURCE_DIR}/src/libtools/*.cc")
include_directories("${PROJECT_SOURCE_DIR}/src/libtools")
add_library(tools STATIC ${src_lib1})
target_link_libraries(tools ${CFITSIO_LIBRARIES} ${FFTW_LD_FLAGS})
if(USE_FFTW)
  add_dependencies(tools fftw3)
endif(USE_FFTW)

#
# Build sparse1d library
#
FILE(GLOB src_lib2  "${PROJECT_SOURCE_DIR}/src/libsparse1d/*.cc")
include_directories("${PROJECT_SOURCE_DIR}/src/libsparse1d")
add_library(sparse1d STATIC ${src_lib2})
target_link_libraries(sparse1d ${CFITSIO_LIBRARIES} ${FFTW_LD_FLAGS})
if(USE_FFTW)
  add_dependencies(sparse1d fftw3)
endif(USE_FFTW)

#
# Build sparse2d library
#
FILE(GLOB src_lib2  "${PROJECT_SOURCE_DIR}/src/libsparse2d/*.cc")
include_directories("${PROJECT_SOURCE_DIR}/src/libsparse2d")
add_library(sparse2d STATIC ${src_lib2})
target_link_libraries(sparse2d ${CFITSIO_LIBRARIES} ${FFTW_LD_FLAGS})
if(USE_FFTW)
  add_dependencies(sparse2d fftw3)
endif(USE_FFTW)

#
# Build mga2d library
#
FILE(GLOB src_mgalib2  "${PROJECT_SOURCE_DIR}/src/libmga2d/*.cc")
include_directories("${PROJECT_SOURCE_DIR}/src/libmga2d")
add_library(mga2d STATIC ${src_mgalib2})
target_link_libraries(mga2d ${CFITSIO_LIBRARIES} ${FFTW_LD_FLAGS})
if(USE_FFTW)
  add_dependencies(mga2d fftw3)
endif(USE_FFTW)

#
# Compile and link executables
#
set(BINMR2D   mr_transform mr_recons mr_filter mr_deconv mr_info cur_contrast cur_deconv cur_filter cur_stat cur_trans)

foreach(program ${BINMR2D})
  add_executable(${program} ${PROJECT_SOURCE_DIR}/src/${program}.cc)
  target_link_libraries(${program} mga2d sparse2d  sparse1d tools)
endforeach(program)

#
# Install (by default in the project directory)
#
set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR})

#install sparse1d headers
FILE(GLOB inc_lib  "${PROJECT_SOURCE_DIR}/src/libsparse1d/*.h")
INSTALL(FILES ${inc_lib} DESTINATION include)
FILE(GLOB inc_lib  "${PROJECT_SOURCE_DIR}/src/libsparse2d/*.h")
INSTALL(FILES ${inc_lib} DESTINATION include)
FILE(GLOB inc_lib  "${PROJECT_SOURCE_DIR}/src/libmga2d/*.h")
INSTALL(FILES ${inc_lib} DESTINATION include)

# Install library
INSTALL(TARGETS sparse1d sparse2d mga2d tools DESTINATION lib)

# install  executables
INSTALL(TARGETS ${BINMR2D} DESTINATION ${BIN_DIR})

# UNIT TESTS
enable_testing()
set(UNIT_TESTS mr_transform_test example)

foreach(program ${UNIT_TESTS})
  add_executable(${program} ${PROJECT_SOURCE_DIR}/tests/${program}.cpp)
  target_link_libraries(${program} mga2d sparse2d  sparse1d tools)
  add_test(${program} ${program})
endforeach(program)
