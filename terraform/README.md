#TERRAFORM
    develop . deploy . configure
--
**usage:**

init, provision, run playbook and test, then destroy

```
./setup.sh
./provision.sh
./test.sh
```

```
./destroy.sh
```
--

**run playbook manually**

```
ansible-playbook --inventory-file=hosts.ini roles/playbook.yml
```
*requires a local copy of ansible*
----
#PACKER
        develop . configure . deploy
        
* benefits

        reduced deploy times
            pre-builds from ansible
        eliminates software build network dependancy failures
        
    


--

* [https://github.com/ansible/ansible-examples](https://github.com/ansible/ansible-examples)
* [https://github.com/terraform-providers/terraform-provider-aws](https://github.com/terraform-providers/terraform-provider-aws)

--
{end of line} -- c3w
