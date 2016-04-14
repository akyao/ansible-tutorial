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
mkdir something
cd something

cat <<EOS > Vagrantfile
Vagrant.configure(2) do |config|
  config.vm.define :node1 do |node|
    node.vm.box = "cent32-6.7"
    node.vm.hostname = "node1"
    node.vm.network :forwarded_port, guest: 22, host: 2001, id: "ssh"
    node.vm.network :private_network, ip: "192.168.33.11"
    node.vm.synced_folder 'tutorial/', '/home/vagrant/tutorial', :create => 'true', :mount_options => ["dmode=777","fmode=666"]
  end
  config.vm.define :node2 do |node|
    node.vm.box = "cent32-6.7"
    node.vm.hostname = "node2"
    node.vm.network :forwarded_port, guest: 22, host: 2002, id: "ssh"
    node.vm.network :forwarded_port, guest: 80, host: 8000, id: "http"
    node.vm.network :private_network, ip: "192.168.33.12"
  end
end
EOS

vagrant up

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
