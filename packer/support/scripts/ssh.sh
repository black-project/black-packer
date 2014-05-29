#!/bin/bash -eux

sudo -u vagrant ssh-keygen -q -N '' -f /home/vagrant/.ssh/id_rsa

chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

