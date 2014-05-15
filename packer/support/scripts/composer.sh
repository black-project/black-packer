#!/bin/sh

apt-get install -y curl git

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

composer global require psy/psysh 0.1.*
composer global require zerkalica/phpcs dev-master
composer global require phpunit/phpunit 4.0.*
composer global require phpmd/phpmd 1.5.*

echo 'export PATH=$PATH:/home/vagrant/.composer/vendor/bin'  >> ~/.profile
