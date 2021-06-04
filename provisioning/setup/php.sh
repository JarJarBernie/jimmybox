#!/bin/sh

#!/bin/sh

# ---------------------------------------------------------------------------------
# PHP Setups
#
# - upgrade manually from Jimmybox 3.0 to 3.1 without breaking your Databases
# - just keep it as it is or customize it to your needs and then run:
# - vagrant reload --provision
#
# Updating all PHP versions:
# - if you have been upgrading your box with sudo apt-get upgrade you uncomment all php versions for auto update
# - otherwise you should update using vagrant ssh and then sudo apt-get update && sudo apt-get upgrade
#
# ---------------------------------------------------------------------------------

# Update everything
sudo apt-get update

# sudo apt-get upgrade -y

# PHP 8.0
sudo apt-get install -y php8.0 php8.0-fpm php8.0-cli php8.0-redis php8.0-mcrypt php8.0-mbstring php8.0-soap php8.0-intl php8.0-zip php8.0-xml php8.0-gd php8.0-opcache php8.0-apcu php8.0-mysql php8.0-curl php8.0-bcmath php8.0-imagick

# PHP 7.4
# sudo apt-get install -y php7.4 php7.4-fpm php7.4-cli php7.4-redis php7.4-mcrypt php7.4-mbstring php7.4-soap php7.4-intl php7.4-zip php7.4-xml php7.4-gd php7.4-opcache php7.4-apcu php7.4-mysql php7.4-curl php7.4-bcmath php7.4-imagick php7.4-json

# PHP 7.3
# sudo apt-get install -y php7.3 php7.3-fpm php7.3-cli php7.3-redis php7.3-mcrypt php7.3-mbstring php7.3-soap php7.3-intl php7.3-zip php7.3-xml php7.3-gd php7.3-opcache php7.3-apcu php7.3-mysql php7.3-curl php7.3-bcmath php7.3-imagick php7.3-json

# PHP 7.2
# sudo apt-get install -y php7.2 php7.2-fpm php7.2-cli php7.2-redis php7.2-mcrypt php7.2-mbstring php7.2-soap php7.2-intl php7.2-zip php7.2-xml php7.2-gd php7.2-opcache php7.2-apcu php7.2-mysql php7.2-curl php7.2-bcmath php7.2-imagick php7.2-json

# PHP 7.1
# sudo apt-get install -y php7.1 php7.1-fpm php7.1-cli php7.1-redis php7.1-mcrypt php7.1-mbstring php7.1-soap php7.1-intl php7.1-zip php7.1-xml php7.1-gd php7.1-opcache php7.1-apcu php7.1-mysql php7.1-curl php7.1-bcmath php7.1-imagick php7.1-json

# PHP 7.0
# sudo apt-get install -y php7.0 php7.0-fpm php7.0-cli php7.0-redis php7.0-mcrypt php7.0-mbstring php7.0-soap php7.0-intl php7.0-zip php7.0-xml php7.0-gd php7.0-opcache php7.0-apcu php7.0-mysql php7.0-curl php7.0-bcmath php7.0-imagick php7.0-json

# PHP 5.6
# sudo apt-get install -y php5.6 php5.6-fpm php5.6-cli php5.6-redis php5.6-mcrypt php5.6-mbstring php5.6-soap php5.6-intl php5.6-zip php5.6-xml php5.6-gd php5.6-opcache php5.6-apcu php5.6-mysql php5.6-curl php5.6-bcmath php5.6-imagick php5.6-json

# Composer 2.x update
sudo php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/bin --filename=composer
sudo php -r "unlink('composer-setup.php');"

# reload apache
sudo service apache2 restart
