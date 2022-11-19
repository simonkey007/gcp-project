#!/bin/bash

OS=`uname`

function replace_in_file() {
    if [ "$OS" = 'Darwin' ]; then
        # for MacOS
        sed -i '' -e "$1" "$2"
    else
        # for Linux and Windows
        sed -i'' -e "$1" "$2"
    fi
}

cd bucket
rm -rf .terraform*
terraform init -backend-config=config/config.remote
if [ $? -ne 0 ]; then
    rm -rf .terraform*
    replace_in_file 's/gcs/local/g' backend.tf
    terraform init
    terraform apply -auto-approve -var-file=config/terraform.tfvars
    replace_in_file 's/local/gcs/g' backend.tf
    terraform init -migrate-state -backend-config=config/config.remote -force-copy
else
    terraform apply -auto-approve -var-file=config/terraform.tfvars
fi
