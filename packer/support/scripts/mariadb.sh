#!/bin/bash -eux

export DEBIAN_FRONTEND=noninteractive

echo 'mariadb-server-10.0 mysql-server/root_password password root' | sudo debconf-set-selections
echo 'mariadb-server-10.0 mysql-server/root_password_again password root' | sudo debconf-set-selections

apt-get install -y mariadb-server
