#!/bin/bash -x

## vagrant-ansible installer
## rev 20190123c3w@juicypop.net

## to be run as a Vagrantfile shell provisioner
sudo apt-get -y update
sudo apt-get -y install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get -y install ansible
