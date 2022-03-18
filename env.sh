#!/usr/bin/env bash

# This script load env file to set those environemnt variables
# to be used in terraform plan and apply commands
#
# See https://registry.terraform.io/providers/hashicorp/aws/latest/docs#environment-variables

set -a
. ./.env
set +a
