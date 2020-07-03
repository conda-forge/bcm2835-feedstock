set -ex

chmod +x configure
./configure --prefix="$PREFIX" CPPFLAGS="$CPPFLAGS -DBCM2835_HAVE_LIBCAP" || (cat config.log && exit 1)

make
make install
