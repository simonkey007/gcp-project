#!/bin/bash

cd cluster
rm -rf .terraform*
terraform init -backend-config=config/config.remote
terraform apply -auto-approve -var-file=config/terraform.tfvars
gcloud container clusters get-credentials $(terraform output -raw cluster_name) --region $(terraform output -raw region)
