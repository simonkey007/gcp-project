#!/bin/bash

cd vpc
rm -rf .terraform*
terraform init -backend-config=config/config.remote
terraform apply -auto-approve -var-file=config/terraform.tfvars
