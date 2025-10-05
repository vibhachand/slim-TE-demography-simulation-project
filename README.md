# slim-TE-demography-simulation-project

This repository contains the code and files for a simulation of transposable element (TE) dynamics under changing demography in maize. This simulation is made using SLiM, a population genetics software developed by the Messer Lab that comes with features useful for modeling population genetics. Learn more about SliM at: https://messerlab.org/slim/<br>

## Project Overview
The goal of this project is to model how transposable elements behave under changing demography during the domestication of maize. In this simulation, the following parameters were added: TE disabling, epigenetic silencing and unsilencing, replication/propagation, and conversion of autonomous TEs to non-autonomous TEs. To model changing demographies, a population bottleneck is introduced at cycle 500. Further details about the model design and objective is available in the **project_write_up** file.


## Table of Contents
**run_maize_te_sim.sh:** Bash script for running simulations as an array job.<br><br>
**te_sim_array_job.slim:** SLiM simulation script that models TE dynamics under changing demographies.<br><br>
**sim_configurations.txt:** Configurations file for specifying the population bottleneck sizes for each simulation run.<br><br>
**project-write-up:** Document explaining the simulation's objective, design choices, and parameters.<br><br>
**output_parser.R**: R script for parsing and organizing simulation results into an Excel spreadsheet.

## How to Run
This project requires the installation of SliM version 4 or higher.

1. Load Conda in your SLURM environment
```
module load conda
```
2. Activate a Conda environment with SLiM installed
```
conda activate slim
```
3. Run the simulation by submitting a job:
```
sbatch run_maize_te_sim.sh
```
Each simulation takes approximately 3 days to complete running.

## Credits
This project was made possible by the Ross-Ibarra Lab at UC Davis. Thanks to Natasha Dhamrait, Regina Fairbanks, and Dr. Ross-Ibarra for their guidance and resources.

## Contact
For any questions, contact me at vibhamellow@gmail.com





