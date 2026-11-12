#!/bin/bash

# Check whether a directory exists
check_directory() {
    if [ -d "$1" ]; then
        echo "Directory exists: $1"
    else
        echo "Directory does not exist: $1"
    fi
}

# Check whether a file is readable
check_readable() {
    if [ -r "$1" ]; then
        echo "File is readable: $1"
    else
        echo "File is not readable or does not exist: $1"
    fi
}

# Function calls
check_directory "$1"
check_readable "$2"