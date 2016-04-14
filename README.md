編集中
TODO
/ansible/*
Vagrantfile
setup.sh

ansible dirはnode1と共有

# ansible-tutorial
ansibleを使ってwordpress環境を用意するサンプル  
http://celtislab.net/archives/20160127/ansible_tutorial_for_windows/

# pre required
vagrant installed

# How to
## in host
```bash
git clone https://github.com/akyao/ansible-tutorial/tree/playbook
cd ansible-tutorial
vagrant up # centos6

# for ssh node2 from node1
vagrant ssh-config node1 > ssh_config
scp -F ssh_config .vagrant/machines/node2/virtualbox/private_key node1:.ssh/id_rsa
```

## in node1

git install
clone this
hosts
ansible-playbook -i hosts simple-playbook.yml

## 検証
