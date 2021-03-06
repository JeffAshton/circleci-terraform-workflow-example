#!/usr/bin/env bash
set -eu
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/terraform-init.sh

echo "Generating plan to $OUTPUT_PATH"
terraform plan -out $OUTPUT_PATH
