# To be run from a build directory directly above a Kokkos source directory.

cmake -B . -S .. -DCMAKE_CXX_STANDARD=20 -DKokkos_ENABLE_SERIAL=ON -DKokkos_ENABLE_OPENMP=ON -DCMAKE_CXX_COMPILER=g++ -DKokkos_ARCH_NATIVE=ON -DCMAKE_CXX_FLAGS="-fopenmp"
cmake --build .
