# To be run from a build directory directly above a Kokkos source directory.

cmake -B . -S .. -DKokkos_ENABLE_SERIAL=ON -DKokkos_ENABLE_OPENMP=ON -DKokkos_ENABLE_CUDA=ON -DCMAKE_CXX_COMPILER=$(pwd)/../bin/nvcc_wrapper -DKokkos_ARCH_NATIVE=ON -DKokkos_ARCH_ADA89=ON
cmake --build .
