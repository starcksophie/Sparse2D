# Install script for directory: /Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/Atrou1D.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/Filter.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/Fista.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/fractal.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/MeyerWT1D.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/MR1D_Filter.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/MR1D_NoiseModel.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/MR1D_Obj.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/MR1D_Regul.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/MR1D_Segment.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/MR1D_Sigma.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/Mr_FE.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/Mr_FewEvent.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/Mr_FewEvent1d.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/MR_Threshold.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/Pyr1D.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/SB_Filter1D.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/WT1D_FFT.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse1d/WT2D_CF.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/FCur.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/LineCol.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MeyerWT.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MR1D1D.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MR_Abaque.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MR_Contrast.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MR_CorrNoise.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MR_Deconv.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/Mr_FewEvent2d.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MR_Filter.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MR_Noise.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MR_NoiseModel.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MR_Obj.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MR_Psupport.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MR_Rayleigh.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MR_Sigma.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MR_SoftRegul.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/MR_Support.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libsparse2d/SB_Filter.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/CB_MCA.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/CurContrast.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/Curvelet.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/FastSlantStack.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/FSS.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/IM_Block2D.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/IM_Color.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/IM_DCT.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/IM_Line.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/IM_Radon.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/IM_Simu.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/MBase.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/MDCT.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/MR_Sat.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/MRBase.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/PCur.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/PrimeNumber.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/RadNoise.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/Ridgelet.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/RidNoise.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/WPackets.h"
    "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/src/libmga2d/WT_Mirror.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/libsparse1d.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsparse1d.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsparse1d.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsparse1d.a")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/libsparse2d.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsparse2d.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsparse2d.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsparse2d.a")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/libmga2d.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmga2d.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmga2d.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmga2d.a")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/libtools.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtools.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtools.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtools.a")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/mr_transform")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_transform" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_transform")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/Cellar/cfitsio/3.370/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_transform")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_transform")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/mr_recons")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_recons" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_recons")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/Cellar/cfitsio/3.370/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_recons")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_recons")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/mr_filter")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_filter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_filter")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/Cellar/cfitsio/3.370/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_filter")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_filter")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/mr_deconv")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_deconv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_deconv")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/Cellar/cfitsio/3.370/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_deconv")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_deconv")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/mr_info")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_info" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_info")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/Cellar/cfitsio/3.370/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_info")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/mr_info")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/cur_contrast")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_contrast" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_contrast")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/Cellar/cfitsio/3.370/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_contrast")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_contrast")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/cur_deconv")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_deconv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_deconv")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/Cellar/cfitsio/3.370/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_deconv")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_deconv")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/cur_filter")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_filter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_filter")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/Cellar/cfitsio/3.370/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_filter")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_filter")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/cur_stat")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_stat" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_stat")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/Cellar/cfitsio/3.370/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_stat")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_stat")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/cur_trans")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_trans" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_trans")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/Cellar/cfitsio/3.370/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_trans")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/cur_trans")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/sfarrens/Dropbox/CEA/P-ISAP/isap/cxx/sparse2d_opt_w_unit/build2/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
