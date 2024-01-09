#!/bin/bash

# Define default values
default_DBName="defaultDBName"
default_DBUser="defaultDBUser"
default_DBPassword="defaultDBPassword"

# Fetch from environment or use default
DBName=${DBName:-$default_DBName}
DBUser=${DBUser:-$default_DBUser}
DBPassword=${DBPassword:-$default_DBPassword}

# Write to variables.env
echo "DBName=${DBName}" > variables.env
echo "DBUser=${DBUser}" >> variables.env
echo "DBPassword=${DBPassword}" >> variables.env