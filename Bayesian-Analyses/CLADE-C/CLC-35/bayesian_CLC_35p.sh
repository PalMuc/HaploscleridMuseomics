#!/bin/bash 
#SBATCH --job-name=bayesian_CLC-35p
#SBATCH --output=bayesian_CLC-35p.log
#SBATCH --error=bayesian_CLC-35p.err
#SBATCH --ntasks=32
#SBATCH --mem=250G
#SBATCH --nodes=1
#SBATCH --mail-user j.sprong@lmu.de
#SBATCH --mail-type=ALL
#SBATCH --qos=low_prio_long

module load gnu/7
module load boost
module load openmpi

mpirun -np 32 rb-mpi bayesian_tree.Rev
