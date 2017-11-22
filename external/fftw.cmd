#! /bin/csh
set current_dir=`pwd`
set dest_dir=`cd ../..;pwd`
cd $current_dir
touch ChangeLog
rm -rf autom4te.cache
autoreconf --verbose --install --symlink --force
autoreconf --verbose --install --symlink --force
autoreconf --verbose --install --symlink --force
rm -f config.cache
./configure --prefix=$dest_dir --enable-maintainer-mode --enable-shared --enable-sse2 --enable-openmp
make 
make install
./configure --prefix=$dest_dir --enable-maintainer-mode --enable-shared --enable-single --enable-sse2 --enable-openmp
make 
make install
make distclean
# rm tools/fftwf-wisdom.1
