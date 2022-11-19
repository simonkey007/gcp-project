#!/bin/bash

function destroy() {
    cd $1
    rm -rf .terraform*
    terraform init -backend-config=config/config.remote
    terraform destroy -auto-approve -var-file=config/terraform.tfvars
    cd ..
}

destroy airflow
destroy cluster
destroy vpc
destroy bucket
