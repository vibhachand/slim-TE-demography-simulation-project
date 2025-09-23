# slim-TE-demography-simulation-project

This repository contains the code and files for a simulation of transposable element dynamics under changing demography in maize. This simulation is made using SLiM, a population genetics software created by the Messer Lab that comes with features useful for building population genetics simulations. Read more about SliM at: https://messerlab.org/slim/<br>

The goal of this project is to simulate transposable element (TE) dynamics and changing demography during the domestication of maize. In this simulation, the following parameters were added: TE disabling, epigenetic silencing and unsilencing, replication/propagation, and conversion of autonomous TEs to non-autonomous TEs. This simulation models changing demographies by introducing a population bottleneck at generation 626. For more information please see the project_write_up file.


## Table of Contents
**run_maize_te_sim.sh:** The bash script used for running simulations as an array job.<br><br>
**te_sim_array_job.slim:** The SLiM simulation script that models transposable element dynamics under changing demographies.<br><br>
**sim_configurations.txt:** An array jobs configurations file that specifies the values of [blank], the population bottleneck size, and [blank].<br><br>
**project_write_up:** A project write up explaining the simulation design choices, and parameters.<br><br>
**output_parser.R**: Parses the slim scripts output for excel files

## How to run
This project also requires the installation of SliM version 4 or higher.

1. Load Conda in your SLURM environment
```
module load conda
```
2. Activate the Conda environment named `slim`, which has SLiM installed
```
conda activate slim
```
3. Run the simulation by submitting the job script:
```
sbatch run_maize_te_sim.sh
```
Each simulation takes approximately 3 days to complete running.

## Credits
This project was made possible by the Ross-Ibarra Lab at UC Davis. Thanks to Natasha Dhamrait, Regina Fairbanks, and Dr. Ross-Ibarra for their guidance and resources.

## Contact
For any questions, contact me at vibhamellow@gmail.com





