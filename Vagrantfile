# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
Vagrant.require_version ">= 1.6.5"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Box
  config.vm.box = "blackbox"
  config.vm.hostname = 'blackbox.dev'

  # Network
  config.vm.network "private_network", type: "dhcp"

  if Vagrant.has_plugin?('landrush')
    config.landrush.enabled            = true
    config.landrush.tld                = config.vm.hostname
    config.landrush.guest_redirect_dns = false
  elsif Vagrant.has_plugin?('vagrant-hostmanager')
    config.hostmanager.enabled     = true
    config.hostmanager.manage_host = true
    config.hostmanager.ip_resolver = proc do |vm, resolving_vm|
      if vm.id
        `VBoxManage guestproperty get #{vm.id} "/VirtualBox/GuestInfo/Net/1/V4/IP"`.split()[1]
      end
    end

    config.hostmanager.aliases = %w(
      config.vm.hostname
    )

  end

  # SSH
  config.ssh.forward_agent = true

  # Synced Folders
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder ".", "/var/www/black", type: "nfs"

  # Providers
  config.vm.provider "vmware_fusion" do |v, override|
    override.vm.box_url = "packer/box/black-vmware.box"
    v.vmx["memsize"] = "1024"
    v.vmx["numvcpus"] = "1"
    v.vmx["displayName"] = "blackbox"
  end

  config.vm.provider "virtualbox" do |v, override|
    override.vm.box_url = "packer/box/black-virtualbox.box"
    v.memory = "1024"
    v.cpus = "1"
    v.name = "blackbox"
  end

  # Git
  if File.exists?(File.join(Dir.home, '.gitconfig')) then
    config.vm.provision :file do |file|
      file.source      = '~/.gitconfig'
      file.destination = '/home/vagrant/.gitconfig'
    end
  end

  # Composer
  if File.exists?(File.join(Dir.home, '.composer/auth.json')) then
    config.vm.provision :file do |file|
      file.source      = '~/.composer/auth.json'
      file.destination = '/home/vagrant/.composer/auth.json'
    end
  end

  # OhMyZsh
  if File.exists?(File.join(Dir.home, '.zshrc')) then
    config.vm.provision :file do |file|
      file.source      = '~/.zshrc'
      file.destination = '/home/vagrant/.zshrc'
    end
  end

end
