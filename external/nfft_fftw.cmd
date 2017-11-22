#! /bin/bash
current_dir=`pwd`
dest_dir=`cd ../..;pwd`
cd $current_dir
alias libtoolize=$(type -p glibtoolize libtoolize | head -1)
touch ChangeLog
rm -rf autom4te.cache
libtoolize
autoreconf --verbose --install --force
autoreconf --verbose --install --force
autoreconf --verbose --install --force
rm -f config.cache
./configure --prefix=$dest_dir --with-fftw3=$dest_dir --enable-openmp
make -j8
make install
make distclean
rm include/config.h.in~

