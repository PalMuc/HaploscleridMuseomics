#!/bin/bash 
#SBATCH --job-name=maptree_CFGA_25p
#SBATCH --output=maptree_CFGA_25p.log
#SBATCH --error=maptree_CFGA_25p.err
#SBATCH --ntasks=8
#SBATCH --mem=24G
#SBATCH --nodes=1
#SBATCH --mail-user j.sprong@lmu.de
#SBATCH --mail-type=ALL
#SBATCH --qos=high_prio

module load gnu/7
module load boost
module load openmpi

mpirun -np 4 rb-mpi maptree.Rev
