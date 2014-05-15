#!/bin/sh

apt-get install -y python-software-properties

# MongoDB
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

# MariaDB
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
echo 'deb http://ftp.igh.cnrs.fr/pub/mariadb/repo/10.0/debian wheezy main' | sudo tee /etc/apt/sources.list.d/mariadb.list

# Dotdeb
echo 'deb http://packages.dotdeb.org wheezy all' | sudo tee /etc/apt/sources.list.d/dotdeb.list
echo 'deb-src http://packages.dotdeb.org wheezy all' | sudo tee -a /etc/apt/sources.list.d/dotdeb.list
echo 'deb http://packages.dotdeb.org wheezy-php55 all' | sudo tee -a /etc/apt/sources.list.d/dotdeb.list
echo 'deb-src http://packages.dotdeb.org wheezy-php55 all' | sudo tee -a /etc/apt/sources.list.d/dotdeb.list

wget http://www.dotdeb.org/dotdeb.gpg
apt-key add dotdeb.gpg

apt-get update
