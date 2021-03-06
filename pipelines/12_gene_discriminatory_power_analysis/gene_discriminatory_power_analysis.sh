#!/bin/bash

#$ -cwd
#$ -N gene_discriminatory_power_analysis
#$ -V
#$ -l h_rt=47:59:59
#$ -l h_vmem=400G

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    exit 1
fi

Rscript gene_discriminatory_power_analysis.R $1

echo "End on `date`"
