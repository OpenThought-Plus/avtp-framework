#!/bin/bash

IP=$(cat terraform.tfstate|grep "public_ip\":"|awk '{print $2}'|tr -d \",|tr -d ,)

### tests http, https, then logs in as {userX}
echo "Press a key for HTTP test"; read
echo HTTP
echo
curl http://${IP}

echo "Press a key for HTTPS test"; read
echo HTTPS
echo
curl http://${IP}

#echo "Press a key to ssh into aws as {userX} user"; read
#echo SSH
#ssh -i offline/user-ssh-keys/userX1 userx@${IP}
