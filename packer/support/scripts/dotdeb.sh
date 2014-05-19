#!/bin/sh

# Install Nginx and PHP from dotdeb

apt-get install -y \
    nginx-full \
    php5-cli \
    php5-fpm \
    php5-mysqlnd \
    php5-curl \
    php5-mcrypt \
    php5-imagick \
    php5-xdebug \
    php5-intl \
    php5-mongo

# Stop services
service php5-fpm stop
service nginx stop

# Copy conf files
cp /tmp/php-cli.ini /etc/php5/cli/php.ini
cp /tmp/php-fpm.ini /etc/php5/fpm/php.ini
cp /tmp/nginx-default /etc/nginx/sites-available/default
cp /tmp/20-xdebug.ini /etc/php5/mods-available/xdebug.ini

# Start services
service php5-fpm start
service nginx start


