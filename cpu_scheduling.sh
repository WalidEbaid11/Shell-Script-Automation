#!/bin/bash

# Part b) - CPU Scheduling Simulation

# i. Create an array named CPU_QUEUE containing processes
CPU_QUEUE=("ProcessA" "ProcessB" "ProcessC")

# ii-vi. Simulate CPU scheduling for each process
for process in "${CPU_QUEUE[@]}"; do
    # iii. Display a message indicating the process is running
    echo "Running $process..."

    # iv. Sleep for a specified time interval (e.g., 1 second) to simulate process execution
    sleep 1

    # v. Display a message indicating the process has completed
    echo "$process completed."
done

# vi. Display a message indicating the completion of the CPU scheduling simulation
echo "CPU Scheduling Simulation completed."
