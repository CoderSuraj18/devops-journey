#!/bin/bash

for file in config.txt backup.txt nginx.conf
do
    if [ -f "$file" ] && [ -r "$file" ]; then
        echo "$file exists and is readable"
    else
        echo "$file is missing or not readable"
    fi
done