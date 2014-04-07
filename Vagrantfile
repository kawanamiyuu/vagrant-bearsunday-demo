# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.box = "chef/centos-6.5"

	config.vm.network "private_network", ip: "192.168.33.10"

	config.vm.provider "virtualbox" do |vb|
		vb.customize ["modifyvm", :id, "--memory", "1024"]
	end

	config.vm.provision :shell, inline: <<-EOT

sh /vagrant/setup.sh 2>&1 | tee /tmp/setup.log

	EOT

end
