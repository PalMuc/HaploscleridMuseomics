#!/bin/bash 
#SBATCH --job-name=bayesian_tree_Clade_BD_30
#SBATCH --output=bayesian_tree_Clade_BD_30.log
#SBATCH --error=bayesian_tree_Clade_BD_30.err
#SBATCH --ntasks=32
#SBATCH --mem=250G
#SBATCH --nodes=1
#SBATCH --mail-user j.sprong@lmu.de
#SBATCH --mail-type=ALL
#SBATCH --qos=normal_prio

module load gnu/7
module load boost
module load openmpi

mpirun -np 32 rb-mpi bayesian_tree.Rev
