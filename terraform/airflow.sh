#!/bin/bash

cd airflow
rm -rf .terraform*
terraform init -backend-config=config/config.remote
terraform destroy -auto-approve
terraform apply -auto-approve -var-file=config/terraform.tfvars
terraform output -raw airflow_password
