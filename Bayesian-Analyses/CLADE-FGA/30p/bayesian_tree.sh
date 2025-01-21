#!/bin/bash 
#SBATCH --job-name=bayesian_tree_Clade_FGA_30
#SBATCH --output=bayesian_tree_Clade_FGA_30.log
#SBATCH --error=bayesian_tree_Clade_FGA_30.err
#SBATCH --ntasks=80
#SBATCH --mem=350G
#SBATCH --nodes=1
#SBATCH --mail-user j.sprong@lmu.de
#SBATCH --mail-type=ALL
#SBATCH --qos=normal_prio_large

module load gnu/7
module load boost
module load openmpi

mpirun -np 80 rb-mpi bayesian_tree.Rev
