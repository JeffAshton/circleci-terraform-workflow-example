#!/usr/bin/env bash
set -eu

# clean up any existing left over state
rm -fr .terraform

echo "Initializing terraform"
terraform init
