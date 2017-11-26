#==============#
# Compile nFFT #
#==============#

if(COMPILE_NFFT)

  if(USE_FFTW)
      set(BUILD_CMD nfft_fftw.cmd)
    else(USE_FFTW)
      set(BUILD_CMD nfft.cmd)
    endif(USE_FFTW)

    ExternalProject_Add(nfft
      GIT_REPOSITORY    https://github.com/NFFT/nfft.git
      CONFIGURE_COMMAND ""
      BUILD_COMMAND     "${CMAKE_SOURCE_DIR}/modules/${BUILD_CMD}"
      SOURCE_DIR        "${MODULE_BUILD_DIR}/nfft"
      INSTALL_COMMAND   ""
      BUILD_IN_SOURCE   1
    )

endif(COMPILE_NFFT)

message(STATUS "nFFT Compilation: ${COMPILE_NFFT}")
