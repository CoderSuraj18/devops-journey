#!/bin/bash

read -p "Enter a file name: " filename

if [ -f "$filename" ]; then
    echo "File exists."
else
    echo "File does not exist."
fi