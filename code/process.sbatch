#!/bin/bash -x
#SBATCH --account=jinm72
#SBATCH --mail-user=FIXME
#SBATCH --mail-type=END
#SBATCH --job-name=FIXME
#SBATCH --output=logs/processing-out.%j
#SBATCH --error=logs/processing-err.%j
#SBATCH --time=24:00:00
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=256
#SBATCH --partition=dc-cpu-bigmem
#SBATCH --nodes=1

srun parallel --delay 0.2  -a code/aomic_cat.jobs --use-cpus-instead-of-cores

wait
