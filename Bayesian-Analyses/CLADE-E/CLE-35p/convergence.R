#!/usr/bin/Rscript --

### Check for convergence ###
library(convenience)

name_files <- c("output_bayesian_tree_posterior.log", "output_bayesian_tree_posterior.trees")


check_convergence <- checkConvergence(list_files = name_files)

check_convergence

#writeLines( as.character(check_convergence$converged), con = ("convergence_assessment/"_converged.txt") )
#cat(check_convergence$message, file = ("convergence_assessment/"_message.txt"))
#if( length(check_convergence$failed_names) > 0 ) cat(as.character(check_convergence$failed_names), file = ("convergence_assessment/"_failed.txt"))
#plotDiffSplits(check_convergence, filename = ("convergence_assessment/"_diff_splits.pdf") )
#plotEssSplits(check_convergence, filename = ("convergence_assessment/"_ESS_splits.pdf"))
#plotEssContinuous(check_convergence, filename = ("convergence_assessment/"_ESS_cont.pdf"))
#plotKS(check_convergence, filename = ("convergence_assessment/"_KS.pdf"))
