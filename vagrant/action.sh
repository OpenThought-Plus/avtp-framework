#!/bin/bash

### TruckingOffice
##

#{host} to-be-implemented
if [ ! ${3} ]; then { echo "Usage: ./action.sh [init|up|halt|destroy] [dev|test|staging|production] [host]"; exit 1; }; fi
export VAGRANT_FUNCTION="${1}"
export VAGRANT_BUILD_ENV="${2}"
export VAGRANT_HOST="${3}"

# sync Vagrantfile to environment
echo "syncing to environment: ${VAGRANT_BUILD_ENV} host: ${VAGRANT_HOST}"
cd environments
if [ ! -d ${VAGRANT_BUILD_ENV}/${VAGRANT_HOST} ]; then { mkdir -p ${VAGRANT_BUILD_ENV}/${VAGRANT_HOST}; }; fi

# skel
. ./portmaps.inc
#for _ports in ${_VAGRANT_BUILD_ENV}${_VAGRANT_HOST}; do {
for _strings in ${_strings}; do {
_build+="%%${_strings}%%/${!_strings}/g;s/"
}; done
build=$(echo ${_build} | sed -e 's/s\/$//g;')

 sed -e "s/${build}" base/Vagrantfile.skel \
    | sed -e "s/%%VAGRANT_HOST%%/${VAGRANT_HOST}/g;" \
    | grep -v -e "%%.*%%$" \
    > ${VAGRANT_BUILD_ENV}/${VAGRANT_HOST}/Vagrantfile

cd ${VAGRANT_BUILD_ENV}/${VAGRANT_HOST}

# for passwd'd ssh keys
ssh-add ~/.ssh/id_rsa

# run action
bash -c "../../../_actions/${VAGRANT_FUNCTION}.sh ${2} ${3}"
