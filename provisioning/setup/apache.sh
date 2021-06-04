#!/bin/sh

# APACHE VIRTUAL HOSTS
# this file is used to detect wich hosts exist in your vm and enables them automatically
# please edit your hosts below
#########################################################################################

# copy all hosts to the sites_available directory
sudo cp /usr/local/vagrant/hosts/* /etc/apache2/sites-available/

# enable the default hosts
sudo a2ensite 00*.conf

# myproject.com
# -------------------
# if [ -d "/var/www/myproject.com/" ]; then
#    sudo a2ensite 100-myproject.conf
# else
#    sudo a2dissite 100-myproject.conf
# fi

# restart apache
sudo service apache2 restart
