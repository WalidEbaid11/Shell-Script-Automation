#!/bin/bash

# Function to perform file operations
perform_file_operations() {
    # Include the file operations script from the previous section
    source file_operations.sh
}

# Function to perform CPU scheduling simulation
perform_cpu_scheduling() {
    # Include the CPU scheduling simulation script from the previous section
    source cpu_scheduling.sh
}

# Function to cleanup created files or directories
cleanup() {
    # Remove any files or directories created during script execution
    rm -rf "file_directory"
}

# Function to display the menu
display_menu() {
    echo "User-Friendly Menu"
    echo "1. Perform File Operations"
    echo "2. Simulate CPU Scheduling"
    echo "3. Exit"
}

# Main part of the script
while true; do
    # Display the menu
    display_menu

    # Prompt the user to enter their choice
    read -p "Enter your choice (1, 2, or 3): " user_choice

    case $user_choice in
        1)
            # II. Perform File Operations
            perform_file_operations
            ;;
        2)
            # III. Simulate CPU Scheduling
            perform_cpu_scheduling
            ;;
        3)
            # IV. Exit
            echo "Exiting the script. Goodbye!"
            sleep 3
            # Cleanup before exiting
            cleanup
            
            exit 0
            ;;
        *)
            # Invalid choice
            echo "Invalid choice. Please enter 1, 2, or 3."
            ;;
    esac
done
