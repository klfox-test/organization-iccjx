#!/bin/bash
set -euo pipefail

KEY=`find . -name '*.key.json'`
echo $KEY

export GOOGLE_CREDENTIALS=`pwd`/${KEY}
TERRAFORM_DIR=.

terraform init -reconfigure ${TERRAFORM_DIR}
terraform plan -var credentials=${GOOGLE_CREDENTIALS} -var-file=${TERRAFORM_DIR}/terraform.tfvars ${TERRAFORM_DIR}
terraform apply -auto-approve -var credentials=${GOOGLE_CREDENTIALS} -var-file=${TERRAFORM_DIR}/terraform.tfvars ${TERRAFORM_DIR}
