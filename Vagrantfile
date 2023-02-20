Vagrant.configure('2') do |config|
config.vm.box_check_update= 'false'
config.vm.provider "virtualbox" do |vb|
       vb.memory = "512"
end

config.vm.define "terraform" do |web|
       web.vm.hostname = "terraform"
       web.vm.box = "bento/ubuntu-18.04"
       web.vm.network:private_network, ip:"192.168.10.100"
       web.vm.network:forwarded_port, guest:2205, host:2300
       web.ssh.username = 'vagrant'
       web.ssh.password = 'vagrant'
       web.ssh.insert_key = 'true'
end

config.vm.define "target" do |db|
       db.vm.hostname = "target"
       db.vm.box = "ubuntu/bionic64"
       db.vm.network:private_network, ip:"192.168.10.120"
end


end