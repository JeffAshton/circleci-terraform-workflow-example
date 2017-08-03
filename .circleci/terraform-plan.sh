#!/usr/bin/env bash
set -eu
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Creating output directory"
OUTPUT_DIR=/var/tmp/plans/
OUTPUT_PATH=$OUTPUT_DIR/test.plan
mkdir -p $OUTPUT_DIR

echo "Generating plan"
terraform plan -out $OUTPUT_PATH
