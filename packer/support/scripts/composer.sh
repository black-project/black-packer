#!/bin/bash -eux

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

echo 'export PATH=$PATH:/home/vagrant/.composer/vendor/bin' >> /home/vagrant/.profile

sudo -u vagrant composer global require psy/psysh 0.1.*
sudo -u vagrant composer global require zerkalica/phpcs dev-master
sudo -u vagrant composer global require phpunit/phpunit 4.0.*
sudo -u vagrant composer global require phpmd/phpmd 1.5.*
