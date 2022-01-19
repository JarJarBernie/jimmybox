#!/bin/sh

# ---------------------------------------------------------------------------------
# PHP ini setups
# ---------------------------------------------------------------------------------

# PHP 5.6
# -------------------
if [ -d "/etc/php/5.6/" ]; then
  sudo cp /usr/local/vagrant/php.ini/5.6/fpm/php.ini /etc/php/5.6/fpm/
  sudo cp /usr/local/vagrant/php.ini/5.6/cli/php.ini /etc/php/5.6/cli/
  sudo /etc/init.d/php5.6-fpm restart
fi

# PHP 7.0
# -------------------
if [ -d "/etc/php/7.0/" ]; then
  sudo cp /usr/local/vagrant/php.ini/7.0/fpm/php.ini /etc/php/7.0/fpm/
  sudo cp /usr/local/vagrant/php.ini/7.0/cli/php.ini /etc/php/7.0/cli/
  sudo /etc/init.d/php7.0-fpm restart
fi

# PHP 7.1
# -------------------
if [ -d "/etc/php/7.1/" ]; then
  sudo cp /usr/local/vagrant/php.ini/7.1/fpm/php.ini /etc/php/7.1/fpm/
  sudo cp /usr/local/vagrant/php.ini/7.1/cli/php.ini /etc/php/7.1/cli/
  sudo /etc/init.d/php7.1-fpm restart
fi

# PHP 7.2
# -------------------
if [ -d "/etc/php/7.2/" ]; then
  sudo cp /usr/local/vagrant/php.ini/7.2/fpm/php.ini /etc/php/7.2/fpm/
  sudo cp /usr/local/vagrant/php.ini/7.2/cli/php.ini /etc/php/7.2/cli/
  sudo /etc/init.d/php7.2-fpm restart
fi

# PHP 7.3
# -------------------
if [ -d "/etc/php/7.3/" ]; then
  sudo cp /usr/local/vagrant/php.ini/7.3/fpm/php.ini /etc/php/7.3/fpm/
  sudo cp /usr/local/vagrant/php.ini/7.3/cli/php.ini /etc/php/7.3/cli/
  sudo /etc/init.d/php7.3-fpm restart
fi

# PHP 7.4
# -------------------
if [ -d "/etc/php/7.4/" ]; then
  sudo cp /usr/local/vagrant/php.ini/7.4/fpm/php.ini /etc/php/7.4/fpm/
  sudo cp /usr/local/vagrant/php.ini/7.4/cli/php.ini /etc/php/7.4/cli/
  sudo /etc/init.d/php7.4-fpm restart
fi

# PHP 8.0
# -------------------
if [ -d "/etc/php/8.0/" ]; then
  sudo cp /usr/local/vagrant/php.ini/8.0/fpm/php.ini /etc/php/8.0/fpm/
  sudo cp /usr/local/vagrant/php.ini/8.0/cli/php.ini /etc/php/8.0/cli/
  sudo /etc/init.d/php8.0-fpm restart
fi

# PHP 8.1
# -------------------
if [ -d "/etc/php/8.1/" ]; then
  sudo cp /usr/local/vagrant/php.ini/8.1/fpm/php.ini /etc/php/8.1/fpm/
  sudo cp /usr/local/vagrant/php.ini/8.1/cli/php.ini /etc/php/8.1/cli/
  sudo /etc/init.d/php8.1-fpm restart
fi

# reload apache
sudo service apache2 restart
