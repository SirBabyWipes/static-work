#!/bin/bash
#SBATCH --partition=Centaurus
#SBATCH --job-name=basic_slurm_job
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=10:00:00 
#SBATCH --mem-per-cpu=16GB

make clean
make

./level_client "Tom Hanks" 3
