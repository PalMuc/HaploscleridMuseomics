#!/bin/bash
#SBATCH --job-name=check_convergence_cladeE35
#SBATCH --output=check_convergence_cladeE35.log
#SBATCH --error=check_convergence_cladeE35.err
#SBATCH --ntasks=16
#SBATCH --mem=32G
#SBATCH --nodes=1
#SBATCH --mail-user j.sprong@lmu.de
#SBATCH --mail-type=ALL
#SBATCH --qos=high_prio

Rscript convergence.R > bayesian_trees_RS.txt
