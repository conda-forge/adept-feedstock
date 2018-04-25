./configure --prefix=${PREFIX} --with-blas=openblas LDFLAGS="-L${PREFIX}/lib -Wl,-rpath,${PREFIX}/lib"
make -j ${CPU_COUNT}
make check -j ${CPU_COUNT}
make install
