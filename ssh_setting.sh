vagrant ssh-config node1 > ssh_config_node1
#scp -F ssh_config_node1 .vagrant/machines/node2/virtualbox/private_key node1:.ssh/id_rsa
scp -F ssh_config_node1 /Users/akyao/.vagrant.d/insecure_private_key node1:.ssh/id_rsa
