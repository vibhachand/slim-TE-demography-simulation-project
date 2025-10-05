#!/bin/bash -l

# setting name of job
#SBATCH --job-name=testArrayJobSlim

# setting home directory
#SBATCH -D /home/s81514/te_simulation_project/slim_scripts/array_job_tests/testFullScript

# setting a standard error output
#SBATCH -e /home/s81514/te_simulation_project/slim_scripts/array_job_tests/testFullScript/errors/sterror-%A_%a.txt

# setting standard output
#SBATCH -o /home/s81514/te_simulation_project/slim_scripts/array_job_tests/testFullScript/outputs/stout-_%A_%a.txt

# setting medium priority
#SBATCH -p high2

# setting the max time
#SBATCH -t 3-00:00:00

# setting memory
#SBATCH --mem 64G

# setting array job
#SBATCH --array=0-29%3

# parse configurations.txt / parameters

# get parameters line
config_line=$(sed -n "$((SLURM_ARRAY_TASK_ID + 1))p" configurations2.txt)

# read columns into variables
read bottleneckSize <<< "$config_line"

# log with echo
echo "Running with bottleneckSize=$bottleneckSize"

# run script
slim -d "bottleneckSize=$bottleneckSize" teSimArrayJob.slim >> ./finalOutputs/outputTEST_${SLURM_ARRAY_TASK_ID}.txt

