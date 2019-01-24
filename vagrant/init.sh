#!/bin/bash -x

### TruckingOffice
## rev 20190123 c3w@juicypop.net
##

vagrant_box_url="https://app.vagrantup.com/aspyatkin/boxes/ubuntu-18.04-server"
vagrant_box="aspyatkin/ubuntu-18.04-server"
date_fmt='%Y%m%d-%H:%S:%s'

function log_status() {
  _status=${1}
  _msg="${2}"
  _exit[0]="OK"; _exit[1]="ERROR";
  echo "$(date +${date_fmt}) [${_exit[${_status}]}] ${_msg}" | tee -a init.log
}

function vagrant_init {
  vagrant box list | \
    grep "aspyatkin/ubuntu-18.04-server" || \
    { vagrant box add "${vagrant_box_url}" && \
      vagrant init "${vagrant_box}";
    }
}

### START HERE

### DEPS
ansible-galaxy install rvm.ruby || { echo "install ansible-galaxy and re-run this installer"; exit 1; }

ssh-add ~/.ssh/id_rsa
vagrant_init && log_status $? "vagrant initialized"
vagrant up && \
vagrant provision --provision-with ansible-installer && \
  log_status $? "vagrant-ansible install/update success" || \
  log_status $? "vagrant-ansible install failed"
