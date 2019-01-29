#!/bin/bash -x

## vagrant-ansible installer
## rev 20190123c3w@juicypop.net

## to be run as a Vagrantfile shell provisioner
sudo apt-get -y update
sudo apt-get -y install python2.7
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
sudo apt-get -y install libpq-dev postgresql-contrib
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get -y install ansible
