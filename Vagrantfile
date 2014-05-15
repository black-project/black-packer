# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "arc-dev"
  config.vm.box_url = "packer/box/blackbox.box"

  config.vm.hostname = 'arc-dev'
  config.vm.network :private_network, ip: "192.168.169.70"

  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

end
