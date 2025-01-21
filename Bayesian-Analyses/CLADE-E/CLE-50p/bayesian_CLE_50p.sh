#!/bin/bash 
#SBATCH --job-name=bayesian_CLE_50p
#SBATCH --output=bayesian_CLE_50p.log
#SBATCH --error=bayesian_CLE_50p.err
#SBATCH --ntasks=12
#SBATCH --mem=64G
#SBATCH --nodes=1
#SBATCH --mail-user j.sprong@lmu.de
#SBATCH --mail-type=ALL
#SBATCH --qos=low_prio_long

module load gnu/7
module load boost
module load openmpi

mpirun -np 12 rb-mpi bayesian_tree.Rev
