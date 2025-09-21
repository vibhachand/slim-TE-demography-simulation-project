# slim-TE-demography-simulation-project

This repository contains files for a simulation of transposable element dynamics under changing demography in maize.<br>
This simulation is made using SLiM.<br>

The goal of this project is to simulate transposable element (TE) dynamics and changing demography during the domestication of maize. In this simulation, the following parameters were added: TE disabling, epigenetic silencing and unsilencing, replication/propagation, and conversion of autonomous TEs to non-autonomous TEs. The model runs for a total of 5000 generations with a population bottleneck introduced at generation 626. This model uses SLiM, a population genetics software created by the Messer Lab that comes with features useful for building population genetics simulations. See more at: https://messerlab.org/slim/.

<br><br>
## Table of Contents
**run_maize_te_sim.sh:** This is an array job bash script used to run the simulation.<br>
**te_sim_array_job.slim:** This is the SLiM simulation script that models transposable element dynamics under changing demographies.
**sim_configurations.txt:** This is an array jobs configurations file that specifies the values of [blank], the population bottleneck size, and [blank].

## How to run
This project also requires the installation of SliM version 4 or higher.

First, in a Slurm environment, load the slim environment using conda:
```
module load conda
conda activate slim
```
Next, run the bash script job using a HPC
```
sbatch run_maize_te_sim.sh
```
Due to the number of transposable elements simulated, each simulation takes approximately 2 days to complete running.

## Credits
This project was made possible by the Ross-Ibarra Lab at UC Davis. Special thanks to Natasha Dhamrait, Regina Fairbanks, and Dr. Ross-Ibarra for their guidance and resources.

For any questions,
**Contact:** vibhamellow@gmail.com





