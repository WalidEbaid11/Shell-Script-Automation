#!/bin/bash

# Function to create a directory if it doesn't exist
create_directory() {
    local directory_name=$1

    if [ ! -d "$directory_name" ]; then
        mkdir "$directory_name"
        echo "Directory '$directory_name' created successfully."
    else
        echo "Directory '$directory_name' already exists."
    fi
}

# Function to create text files with specified content
create_text_files() {
    local directory_name=$1
    local file_prefix=$2
    local num_files=$3

    for ((i = 1; i <= num_files; i++)); do
        echo "Data $i" > "$directory_name/$file_prefix$i.txt"
    done

    echo "Text files created inside '$directory_name'."
}

# Function to list files in a directory
list_files() {
    local directory_name=$1

    if [ -d "$directory_name" ]; then
        echo "Files in '$directory_name':"
        ls "$directory_name"
    else
        echo "Directory '$directory_name' does not exist."
    fi
}

# Function to remove a directory and its contents
remove_directory() {
    local directory_name=$1

    if [ -d "$directory_name" ]; then
        rm -r "$directory_name"
        echo "Directory '$directory_name' and its contents removed."
    else
        echo "Directory '$directory_name' does not exist."
    fi
}

# Main part of the script
echo "File Operations Script"

# Part a) - Create a directory named "file_directory" if it doesn't already exist
read -p "Enter directory name: " user_directory
create_directory "$user_directory"

# Part b) - Inside "file_directory," create five text files with specified content
read -p "Enter file prefix: " user_prefix
create_text_files "$user_directory" "$user_prefix" 5

# Part c) - List files in "file_directory"
list_files "$user_directory"

# Part d) - Remove the entire "file_directory" and its contents
read -p "Do you want to remove the directory? (yes/no): " remove_choice
if [ "$remove_choice" == "yes" ]; then
    remove_directory "$user_directory"
    echo "----> deleted successfully <----"
   

else
    echo "Directory removal canceled."
    echo "----> Directory removal canceled successfully <----"
fi


echo "____________________________________________________________"

echo "                                             "

