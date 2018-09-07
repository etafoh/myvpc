#!/bin/bash
# ==============================================
# run this script to destroy the newly created enviroment
# command: ./destroyVPC.sh
#=================================================

cd stage/
terraform destroy --auto-approve 

cd ../stage/vpc
terraform destroy --auto-approve

# end
