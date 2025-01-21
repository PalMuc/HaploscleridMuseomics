#!/bin/bash 
#SBATCH --job-name=maptree_CLC_25p
#SBATCH --output=maptree_CLC_25p.log
#SBATCH --error=maptree_CLC_25p.err
#SBATCH --ntasks=4
#SBATCH --mem=12G
#SBATCH --nodes=1
#SBATCH --mail-user j.sprong@lmu.de
#SBATCH --mail-type=ALL
#SBATCH --qos=high_prio

module load gnu/7
module load boost
module load openmpi

mpirun -np 4 rb-mpi maptree.Rev
