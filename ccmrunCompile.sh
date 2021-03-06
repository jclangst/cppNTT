#!/bin/bash

#PBS -l nodes=1:ppn=4
#PBS -l walltime=00:10:00
#PBS -N CompileNoTakTo
#PBS -q debug_cpu
#PBS -V

aprun mpicxx -std=c++11 -Ofast -fopenmp -o ~/searchA ~/cppNTT/src/GameNode.cpp ~/cppNTT/src/main.cpp ~/cppNTT/src/MoveTree.cpp ~/cppNTT/src/MiniMax.cpp ~/cppNTT/src/UI.cpp -I/N/u/jclangst/BigRed2/local/lib/bdb -lboost_system -lboost_filesystem -L/N/u/jclangst/BigRed2/local/lib/bdb -ldb_cxx -I/N/soft/cle4/openmpi/gnu/1.8.4/include -pthread -Wl,-rpath -Wl,/N/soft/cle4/openmpi/gnu/1.8.4/lib -Wl,--enable-new-dtags -L/N/soft/cle4/openmpi/gnu/1.8.4/lib -lmpi_cxx -lmpi
