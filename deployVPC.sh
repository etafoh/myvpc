#!/bin/bash
# ============ BY ELVIS ===================================
# This script deploys a 3-TIER VPC environment using a module
# Deployment will be undertaken in the eu-west-1 region. This can be modified

# Pre-requisite:
#    - Ensure that you have terraform installed on the host computer
#    - Create an account with admin previleges and save the credentials in user #      directory under ~/.aws
#    - to run script: ./deployVPC.sh 
# ==========================================================

# script begins
cd state/
terraform init #initialises the state file buckets in S3
terraform apply -auto-approve # Creates the state file buckets

cd ../stage/vpc # go to the vpc dir
terraform init # initialise the vpc

echo "creating the 3-tier vpc now ........"
terraform apply -auto-approve # create the vpcs

# script end
