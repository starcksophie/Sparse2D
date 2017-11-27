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
On Mac OSX we recommend homebrew, the command "brew install cfitsio" will install the cfitsio package.

### Compilation

To configure the sparse2d toolbox for your machine type:

```bash
  $ mkdir build
  $ cd build
  $ cmake ..
```

Once CMake is done, to create the toolbox and compile all the C++ files, type:

```bash
  $ make
  $ make install
```

The library, headers and executables will by default be installed in a directory
called `sparse2d` inside the current build directory. The default install directory
can be changed by running:

```bash
  $ cmake .. -DCMAKE_INSTALL_PREFIX:PATH=<PATH>
```

You may want to add the bin directory to your path for easy access to the sparse2d executables.

Sparse2D can also be built using [FFTW3](http://www.fftw.org/) and/or
[nFFT](https://www-user.tu-chemnitz.de/~potts/nfft/) with the following options:

```bash
  $ cmake .. -DUSE_FFTW=ON -DCOMPILE_NFFT=ON
```

Finally, if you wish to build using a compiler other than the default on your
system (*e.g.* gcc on Mac OSX) you can do so as follows:

```bash
  $ CC=gcc CXX=g++ cmake ..
```

## Usage

The two main executables of the package are **mr_transform** and **mr_filter**, see the instructions in the README/ folder for usage examples
