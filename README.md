## TruckingOffice
### rev 20190124.1 [c3w@juicypop.net](mailto:c3w@juicypop.net)

for **Andrew Campbell** via UpWork

**task:**

* provision Vagrant VM
* install packages, start when needed
  * 20190123 requirements
    * git, rvm, neo4j - 2.3.12, postgres - 9.6.11, gpg2, ssh, memcached, pdftk

----
**usage:**

(after installing vagrant on Linux or OSX)

----
*setup*

*~/.ssh/.config*

    Host *
      ForwardAgent yes

** **

    add `ssh-add ~/.ssh/id_rsa` to your ~/.bash_profile
    and manually run it in your shell, for first time run.

    make sure `curl` is installed on host (brew install curl) for OSX

*initialize your vagrant instance*

    cd vagrant && \
    ./init.sh

*run the playbook*

    cd vagrant && \
    ./truckingoffice-installer-runtime.sh
    (this will take some time, as its compiling ruby, etc)

*connect*
    vagrant ssh

learning:

* [https://github.com/ansible/ansible-examples](https://github.com/ansible/ansible-examples)
