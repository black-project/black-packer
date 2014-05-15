#!/bin/sh

service apache2 stop
apt-get remove -y apache*

rm /etc/init.d/apache2
