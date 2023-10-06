#!/bin/bash
#SBATCH --job-name=WS2
#SBATCH  --nodes=1
#SBATCH  --ntasks-per-node=128
#SBATCH  --time=94:00:00
#SBATCH  -A debug 


module load quantum-espresso/6.6


srun --mpi=pmi2 -n 128 pw.x < ws2.scf.in > ws2.scf.out

srun --mpi=pmi2 -n 128 pw.x < ws2.bands.in > ws2.bands.out

srun --mpi=pmi2 -n 128 bands.x < ws2.bands-pp.in > ws2.bands-pp.out

srun --mpi=pmi2 -n 128 bands.x < ws2.bands-pp-up.in > ws2.bands-pp-up.out

srun --mpi=pmi2 -n 128 bands.x < ws2.bands-pp-down.in > ws2.bands-pp-down.out
