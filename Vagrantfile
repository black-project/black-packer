# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "blackbox-dev"
  config.vm.box_url = "packer/box/blackbox.box"

  config.vm.hostname = 'blackbox-dev'
  config.vm.network :private_network, ip: "192.168.169.69"

  #config.vm.synced_folder ".", "/vagrant", :nfs => true

  config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

end
