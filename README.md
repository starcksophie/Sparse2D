# Sparse2D

Sparse2D provides an array of sparsity based tools and a convenient C++ library for performing various wavelet tranforms.

This package is part of the iSAP suite, available at the [CosmoStat webpage](http://www.cosmostat.org/software/isap)

## Installation instructions

### Prerequisites

The following softwares are required:

   - C++ compiler (gcc strongly recommended)
   - Recent version of CFITSIO ( >V3.31) needs to be first installed.
   - CMake (http://www.cmake.org) and pkg-config
  
Please use a package management tool to properly install cfistio and the other dependencies. On linux you can use apt (Ubuntu).
On Mac Os X we recommend macports, the command "sudo port install cfitsio" will install the cfitsio package.

### Compilation

To configure the sparse2d toolbox for your machine type:

    mkdir build
    cd build
    cmake ..

Once CMake is done, to create the toolbox and compile all the C++ files, type:

    make
    make install

The library, headers and executables will respectively be installed in the lib, include and bin folders. 

You may want to add the bin directory to your path for easy access to the sparse2d executables.

## Usage

The two main executables of the package are **mr_transform** and **mr_filter**, see the instructions in the README/ folder for usage examples
