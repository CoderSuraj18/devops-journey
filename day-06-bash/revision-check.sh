#!/bin/bash

# Ask the user for a filename
echo -n "Enter a filename: "
read filename

# Check if it is a regular file
if [ -f "$filename" ]; then
    # If it is a regular file, check readability
    if [ -r "$filename" ]; then
        echo "✅ '$filename' is a regular file and is readable."
    else
        echo "⚠️ '$filename' is a regular file but not readable."
    fi
else
    echo "❌ '$filename' is not a regular file."
fi
