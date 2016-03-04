cmake_minimum_required(VERSION 2.6)
include(FindPkgConfig)


project(sparse2d)

#
# Find libcfitsio
#
# Locate cfitsio using pkg-config
pkg_check_modules(CFITSIO REQUIRED cfitsio)
include_directories(${CFITSIO_INCLUDE_DIRS})
link_directories(${CFITSIO_LIBRARY_DIRS})


#
# Compilation flags
#
if(APPLE)
  set(CMAKE_CXX_FLAGS "-DMACOS -g0 -O2 -ffast-math -fomit-frame-pointer -fopenmp -Wno-write-strings -DNDEBUG")
#  set(CMAKE_CXX_FLAGS "-DMACOS -g -Wno-write-strings -DNDEBUG")
else(APPLE)
  set(CMAKE_CXX_FLAGS "-g0 -O2 -ffast-math -fomit-frame-pointer -fopenmp -Wno-write-strings -DNDEBUG")
endif(APPLE)


#
# Build sparse2d library
#
FILE(GLOB src_lib  "${PROJECT_SOURCE_DIR}/src/libsparse2d/*.cc")
include_directories("${PROJECT_SOURCE_DIR}/src/libsparse2d")
add_library(sparse2d STATIC ${src_lib})
target_link_libraries(sparse2d ${CFITSIO_LIBRARIES})


#
# Compile and link executables
#
add_executable(im1d_deconv "${PROJECT_SOURCE_DIR}/src/im1d_deconv.cc")
target_link_libraries(im1d_deconv sparse2d)

add_executable(im_deconv "${PROJECT_SOURCE_DIR}/src/im_deconv.cc")
target_link_libraries(im_deconv sparse2d)

add_executable(im_mirror "${PROJECT_SOURCE_DIR}/src/im_mirror.cc")
target_link_libraries(im_mirror sparse2d)

add_executable(mr1d_filter "${PROJECT_SOURCE_DIR}/src/mr1d_filter.cc")
target_link_libraries(mr1d_filter sparse2d)

add_executable(mr1d_gmca "${PROJECT_SOURCE_DIR}/src/mr1d_gmca.cc")
target_link_libraries(mr1d_gmca sparse2d)

add_executable(mr1d_recons "${PROJECT_SOURCE_DIR}/src/mr1d_recons.cc")
target_link_libraries(mr1d_recons sparse2d)

add_executable(mr1d_trans "${PROJECT_SOURCE_DIR}/src/mr1d_trans.cc")
target_link_libraries(mr1d_trans sparse2d)

add_executable(mr2d1d_trans "${PROJECT_SOURCE_DIR}/src/mr2d1d_trans.cc")
target_link_libraries(mr2d1d_trans sparse2d)

add_executable(mr_deconv "${PROJECT_SOURCE_DIR}/src/mr_deconv.cc")
target_link_libraries(mr_deconv sparse2d)

add_executable(mr_filter "${PROJECT_SOURCE_DIR}/src/mr_filter.cc")
target_link_libraries(mr_filter sparse2d)

add_executable(mr_gmca "${PROJECT_SOURCE_DIR}/src/mr_gmca.cc")
target_link_libraries(mr_gmca sparse2d)

add_executable(mr_recons "${PROJECT_SOURCE_DIR}/src/mr_recons.cc")
target_link_libraries(mr_recons sparse2d)

add_executable(mr_info "${PROJECT_SOURCE_DIR}/src/mr_info.cc")
target_link_libraries(mr_info sparse2d)

add_executable(mr_sigma "${PROJECT_SOURCE_DIR}/src/mr_sigma.cc")
target_link_libraries(mr_sigma sparse2d)

add_executable(mr_transform "${PROJECT_SOURCE_DIR}/src/mr_transform.cc")
target_link_libraries(mr_transform sparse2d)

add_executable(mw_deconv "${PROJECT_SOURCE_DIR}/src/mw_deconv.cc")
target_link_libraries(mw_deconv sparse2d)


#
# Install (by default in the project directory)
#

set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR})

#install sparse2d headers
FILE(GLOB inc_lib  "${PROJECT_SOURCE_DIR}/src/libsparse2d/*.h")
INSTALL(FILES ${inc_lib} DESTINATION include/sparse2d)

# Install sparse2d library
INSTALL(TARGETS sparse2d DESTINATION lib)

# install sparse2d executables
INSTALL(TARGETS im1d_deconv im_deconv im_mirror mr1d_filter mr1d_gmca mr1d_recons mr1d_trans mr2d1d_trans mr_deconv mr_filter mr_gmca mr_info mr_recons mr_sigma mr_transform mw_deconv DESTINATION bin)
