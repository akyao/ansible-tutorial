Vagrant.configure(2) do |config|
  config.vm.define :node1 do |node|
    node.vm.box = "centos6"
    node.vm.hostname = "node1"
    node.vm.network :forwarded_port, guest: 22, host: 2001, id: "ssh"
    node.vm.network :private_network, ip: "192.168.33.11"
    node.vm.synced_folder 'ansible/', '/home/vagrant/ansible', :create => 'true', :mount_options => ["dmode=777","fmode=666"]
  end
  config.vm.define :node2 do |node|
    node.vm.box = "centos6"
    node.vm.hostname = "node2"
    node.vm.network :forwarded_port, guest: 22, host: 2002, id: "ssh"
    node.vm.network :forwarded_port, guest: 80, host: 8000, id: "http"
    node.vm.network :private_network, ip: "192.168.33.12"
  end
end
