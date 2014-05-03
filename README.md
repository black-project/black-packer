black-packer
============

Build a fresh new VM for your black-project.

### Step 1: Installation
- First install [Packer][1].
- Now, install [VirtualBox][2].
- And then, install [Vagrant][3].

[1]: http://www.packer.io
[2]: https://www.virtualbox.org/wiki/Downloads
[3]: http://www.vagrantup.com/

### Step 2: Build
Just run `packer build vm.json` and wait. Then, run `vagrant up` and `vagrant ssh` :)
