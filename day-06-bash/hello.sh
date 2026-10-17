#!/bin/bash

read -p "Enter your marks (0-100): " marks

if [ "$marks" -ge 40 ]; then
    echo "Result: Pass"
else
    echo "Result: Fail"
fi