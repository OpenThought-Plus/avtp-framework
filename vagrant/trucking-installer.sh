#!/bin/bash -x

## truckingOffce / dependancies
## rev 20190123 c3w@juicypop.net

echo "Manual Ansible Provisioner.  You no longer need this by DEFAULT"
echo "Press a Key or Ctrl-C to EXIT"; read
vagrant provision --provision-with trucking
