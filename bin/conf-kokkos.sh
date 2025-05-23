# To be run from a build directory directly above a Kokkos source directory.

cmake -B . -S .. -DKokkos_ENABLE_SERIAL=ON -DKokkos_ENABLE_OPENMP=ON -DKokkos_ENABLE_HWLOC=ON -DCMAKE_CXX_COMPILER=g++ -DKokkos_ARCH_NATIVE=ON
cmake --build .
