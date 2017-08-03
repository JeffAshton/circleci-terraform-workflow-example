#!/usr/bin/env bash
set -eu
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/terraform-init.sh

echo "Applying plan"
terraform apply $PLAN_PATH
