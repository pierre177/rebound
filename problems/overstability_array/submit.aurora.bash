#!/bin/bash
#$ -t 1-256
#$ -N kepler
#$ -cwd
#$ -V
#$ -l h_rt=6:00:00
#$ -R y 
#$ -w w
#$ -o pbs.out
#$ -e pbs.err
#$ -r n


cd /data/rein/rebound/problems/overstability_array

export OMP_NUM_THREADS=1

./nbody --id $SGE_TASK_ID
