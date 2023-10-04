#!/bin/bash

# Set the directory where your files are located
directory=$1

# Loop through each file in the directory
for file in "$directory"/*
do
    # Check if the item is a file (not a directory)
    if [ -f "$file" ]
    then
        # Add your placeholder or command here
        echo "Processing file: $file"
        ffmpeg -i $file $file.wav
        # You can replace the 'echo' above with the actual command you want to run.
        # For example, if you want to run a command on each file, replace the 'echo' with that command.
        # Example: SomeCommand "$file"
    fi
done