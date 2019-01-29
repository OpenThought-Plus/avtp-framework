#!/bin/bash

ssh-add key ~/.ssh/passwd
bash -c "./init.sh test"
