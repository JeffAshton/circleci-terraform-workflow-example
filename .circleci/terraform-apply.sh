#!/usr/bin/env bash
set -eu
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/terraform-init.sh

if [[ -f "$PLAN_PATH" ]]; then
    echo "Plan file is missing: $PLAN_PATH"
fi

echo "Applying plan"
terraform apply $PLAN_PATH
