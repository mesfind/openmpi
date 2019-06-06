#!/bin/sh
#PBS -l walltime=1:00:00
#PBS -j oe
#PBS -N mpi_job
#PBS -m abe
#PBS -l nodes=1:ppn=48  


 # load the mpi module
module load openmpi-1.8-x86_64

# run the compiled source code
mpirun  ./hello_world


echo '--------------------------------------------------------------------------------'
echo 'Finished at' `date`


# unload the mpi module
module unload openmpi-1.8-x86_64

