#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: bash arguments.sh <environment> <config-file>"
    exit 1
fi

echo "Script name: $0"
echo "Environment: $1"
echo "Config file: $2"
echo "Total arguments: $#"

environment="staging"
show_environment() {
    local environment="production"
    echo "Inside function: $environment"
}

show_environment

echo "Outside function: $environment"
check_environment() {
    if [ "$1" = "production" ]; then
        echo "Production environment detected"
        return 0
    else
        echo "Invalid environment"
        return 1
    fi
}

if check_environment "$1"; then
    echo "Environment validation successful"
else
    echo "Environment validation failed. Stopping script."
    exit 1
fi

exit 0
