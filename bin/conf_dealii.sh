#!/bin/bash
# Invoke cmake with my preferred options for dealii.
# This is a very simple an nonfancy script. You need to be in a dealii/build
# directory for it to work properly. I could add a path as an argument, but I 
# don't see myself building in random places.
cmake -DCMAKE_INSTALL_PREFIX=/usr/local -DDEAL_II_WITH_MPI=ON -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DDEAL_II_WITH_TRILINOS=ON -DDEAL_II_WITH_PETSC=ON ..
