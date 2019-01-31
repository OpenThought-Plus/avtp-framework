#!/bin/bash

### TruckingOffice
##

#{host} to-be-implemented
if [ ! ${1} ]; then { echo "Usage: ./init.sh [dev|test|staging|production] [host]"; exit 1; }; fi
export VAGRANT_BUILD_ENV="${1}"

vagrant up "${2}"
