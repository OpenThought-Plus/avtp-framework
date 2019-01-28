##TODO

* FIX
  * 

* working directory
  * reduce .gitignore
  * shared script/functions between multi terraform
  * terraform plan -out and exec

* test builds for packer images after build
    
* namespace multi-terraform (orig, packer, test, deploy)
  * key_name
  * security-group

* initial network script build
  * vpc framework
  * subnets
  * ingress/egress
  * basion host

* cleanup
  * key_pairs on aws
  * security-groups on aws
  * running instances (which is why we want a sep account for packer)
  * remove anislble/roles/roles symlink
    * with shared script/functions (above) and
    * reconfig Vagrantfile, terraform skels

  