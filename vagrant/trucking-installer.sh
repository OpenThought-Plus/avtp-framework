#!/bin/bash -x

## truckingOffce / dependancies

echo "NOTE: ansible provisioner NOW runs out of Vagrantfile"
echo "press any key to contninue or Ctrl-C to BREAK"; read
vagrant provision --provision-with trucking
