./configure --prefix=${PREFIX} --with-blas=openblas LDFLAGS="-L${PREFIX}/lib -Wl,-rpath,${PREFIX}/lib" CXXFLAGS='-march=x86-64 -mtune=generic -g -O2 -fopenmp'
make -j ${CPU_COUNT}
make check -j ${CPU_COUNT}
make install
