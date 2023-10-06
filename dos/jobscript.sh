#!/bin/bash
#SBATCH --job-name=WS2
#SBATCH  --nodes=1
#SBATCH  --ntasks-per-node=128
#SBATCH  --time=00:30:00
#SBATCH  -A debug 


module load quantum-espresso/6.6


srun --mpi=pmi2 -n 128 pw.x  < ws2.scf.in > ws2.scf.out

srun --mpi=pmi2 -n 128 pw.x  < ws2.nscf.in > ws2.nscf.out

srun --mpi=pmi2 -n 128 dos.x < ws2.dos.in > ws2.dos.out

srun --mpi=pmi2 -n 128 projwfc.x < ws2.pdos.in > ws2.pdos.out
