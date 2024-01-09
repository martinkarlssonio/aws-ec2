#!/bin/bash

# Path to the script that updates variables.env - adjust as necessary
path_to_update_script="./loadVariables.sh"

# Execute the script to ensure variables.env is up-to-date
if [ -f "$path_to_update_script" ]; then
    chmod +x "$path_to_update_script"
    "$path_to_update_script"
else
    echo "Update script not found: $path_to_update_script"
    exit 1
fi

# Load the variables from the variables.env file
source variables.env

# Deploy using the loaded variables
aws cloudformation deploy \
    --template-file template.yaml \
    --stack-name wp-test \
    --capabilities CAPABILITY_NAMED_IAM \
    --parameter-overrides DBName=$DBName DBUser=$DBUser DBPassword=$DBPassword
