#!/usr/bin/env bash
set -eu

TERRAFORM_URL=https://releases.hashicorp.com/terraform/$TERRAFORM_VERSION/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
echo "Downloading $TERRAFORM_URL"
curl $TERRAFORM_URL -o /var/tmp/terraform.zip

sudo unzip /var/tmp/terraform.zip -d /usr/local/bin
terraform -version
