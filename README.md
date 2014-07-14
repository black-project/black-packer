black-packer
============

Build a fresh new VirtualMachine for your black-project.

## About

The default configuration will not share the root project directory (this is my choice) but, if you want to use vagrant
 on your root folder, don't hesitate to make your changes in `vm/Vagrantfile`.
 
If you love this project (or me), don't hesitate to [Flattr me][4] ;)

## Contribute

The default configuration is very simple. I don't use provisioners like chef/puppet/ansible but shell scripts so don't hesitate
to contribute.

## Default Nginx configuration

The default Nginx work for a Symfony project.

## Installation

### Step 1: Your first box

- First install [Packer][1].
- Now, install [VirtualBox][2].
- And then, install [Vagrant][3].

### Step 2: Plugins

We need some Vagrant plugins for your convenience. In your terminal, use these commands:

```
vagrant plugin install vagrant-hostmanager
vagrant plugin install vagrant-hostsupdater
vagrant plugin install vagrant-vbguest
```

### Step 3: Clone this repository

Go to your project folder in your terminal and clone this repostory with `git submodule add git@github.com:black-project/black-packer.git vm`.
Then go to your vm directory with `cd vm/`.

### Step 4: Build
Just run `packer build vm.json` and wait.
Then, run `vagrant up`, `vagrant hostmanager` and `vagrant ssh` :)

## Options

If you want to build your VM for vmware only, use this:

```bash
packer build --only=vmware-iso vm.json
vagrant up --provider vmware_fusion
```

Same operation for Virtualbox:

```bash
packer build --only=virtualbox-iso vm.json
vagrant up --provider virtualbox
```


[1]: http://www.packer.io
[2]: https://www.virtualbox.org/wiki/Downloads
[3]: http://www.vagrantup.com/
[4]: https://flattr.com/profile/alexandre.balmes
