#!/bin/bash

if [ ! ${1} ]; then { echo "Usage: ./init.sh [dev|test|staging|production] [host]"; exit 1; }; fi

ssh-add key ~/.ssh/id_rsa
bash -c "./init.sh ${1}"
