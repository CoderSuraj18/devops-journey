#!/bin/bash

echo "=== DevOps Configuration Checker ==="

read -p "Enter configuration filename: " filename

if [ -f "$filename" ]; then
    echo "SUCCESS: Configuration file found."
    echo "Ready to continue."
else
    echo "ERROR: Configuration file not found."
    echo "Please check the filename."
fi