

# ansible-tutorial
ansibleを使ってwordpress環境を用意するサンプル  
http://celtislab.net/archives/20160127/ansible_tutorial_for_windows/

# pre required
vagrant installed

vagrant box add centos6 https://github.com/CommanderK5/packer-centos-template/releases/download/0.6.7/vagrant-centos-6.7.box

# How to
## in host
```bash
git clone https://github.com/akyao/ansible-tutorial/tree/playbook
cd ansible-tutorial
vagrant up # centos6

# for ssh node2 from node1
sh ssh_setting.sh
```

## in node1
```bash
vagrant ssh node1

sudo yum install epel-release
sudo yum install ansible

# ansible内でyes,no聞かれるとうざいので
ssh -oStrictHostKeyChecking=no 192.168.33.12

cd ansible
# test-serversでしているサーバーに対して、site.ymlの内容を実行
ansible-playbook -i test-servers site.yml
```

## 検証
ブラウザで以下のページにアクセスできればOK
http://192.168.33.12
