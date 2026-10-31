#!/bin/bash

for file in app.conf database.conf server.conf
do
    if [ -f "$file" ] && [ -r "$file" ]
    then
        echo "$file: File exists and is readable"
    else
        echo "$file: File is missing or not readable"
    fi
done