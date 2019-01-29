#!/bin/bash

ssh-add key ~/.ssh/id_rsa
bash -c "./init.sh test"
