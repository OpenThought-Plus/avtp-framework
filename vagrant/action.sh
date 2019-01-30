#!/bin/bash

### TruckingOffice
##

#{host} to-be-implemented
if [ ! ${3} ]; then { echo "Usage: ./action.sh [init|up|halt|destroy] [dev|test|staging|production] [host]"; exit 1; }; fi
export VAGRANT_FUNCTION="${1}"
export VAGRANT_BUILD_ENV="${2}"
export VAGRENT_HOST="${3}"

# sync Vagrantfile to environment
echo "syncing to environment: ${VAGRANT_BUILD_ENV} host: ${VAGRENT_HOST}"
cd environments
if [ ! -d "${VAGRANT_BUILD_ENV}" ]; then { mkdir "${VAGRANT_BUILD_ENV}"; }; fi

# skel
. ./portmaps.inc
#for _ports in ${_VAGRANT_BUILD_ENV}${_VAGRENT_HOST}; do {
for _strings in ${_strings}; do {
_build+="%%${_strings}%%/${!_strings}/g;s/"
}; done
build=$(echo ${_build} | sed -e 's/s\/$//g;')

 sed -e "s/${build}" base/Vagrantfile.skel \
    > "${VAGRANT_BUILD_ENV}/Vagrantfile"

cd "${VAGRANT_BUILD_ENV}"
# for passwd'd ssh keys
ssh-add ~/.ssh/id_rsa

# run action
bash -c "../../_actions/${VAGRANT_FUNCTION}.sh ${2} ${3}"
