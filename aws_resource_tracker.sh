#!/bin/bash

###############################################################################
# Author : Prashant Kumar
# Date   : 27/12/2025
# Version: v1
###############################################################################

# Define Colors for better visibility
CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}====================================================${NC}"
echo -e "${YELLOW}          AWS RESOURCE INVENTORY REPORT             ${NC}"
echo -e "${YELLOW}====================================================${NC}"

# List AWS S3
echo -e "\n${CYAN}[1] Listing AWS S3 Buckets${NC}"
aws s3 ls | echo -e "${GREEN}$(cat)${NC}"

# List AWS EC2
echo -e "\n${CYAN}[2] Listing AWS EC2 Instance IDs${NC}"
aws ec2 describe-instances --query 'Reservations[].Instances[].InstanceId' --output text | echo -e "${GREEN}$(cat)${NC}"

# List AWS Lambda
echo -e "\n${CYAN}[3] Listing AWS Lambda Functions${NC}"
aws lambda list-functions --query 'Functions[].FunctionName' --output text | echo -e "${GREEN}$(cat)${NC}"

# List IAM Users
echo -e "\n${CYAN}[4] Listing IAM Users${NC}"
aws iam list-users --query 'Users[].UserName' --output text | echo -e "${GREEN}$(cat)${NC}"

echo -e "\n${YELLOW}====================================================${NC}"
echo -e "${YELLOW}             END OF RESOURCE REPORT                 ${NC}"
echo -e "${YELLOW}====================================================${NC}"