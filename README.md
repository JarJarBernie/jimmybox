![alt tag](https://raw.githubusercontent.com/JarJarBernie/jimmybox/master/public/src/jimmybox.png)

# jimmybox 2.0: web developer box with multiple PHP Versions
vagrant box for PHP Developers with IonCube Integration for professional web development. Works with Shopware and many other applications and frameworks such as Magento, Oxid6, Wordpress, Typo3 or Laravel 5.3.

## Quick Setup:
1) Get the latest Versions of Vagrant and Virtual Box

2) clone the latest version and run vagrant up
```bash
git clone https://github.com/JarJarBernie/jimmybox.git .
vagrant up
```

3) open **192.168.33.11** in your browser (default PHP Version is 7.2)

(IP can be changed in your Vagrantfile, the "public" directory is your document root)

## Made for PHP professionals and E-Commerce developers
### Shopware ready´
- tested with Shopware 5.4
- use PHP 7.2 Performance in Shopware
- comes with **APCu & IonCube Loader for PHP 5.6, PHP 7.0, PHP 7.1, PHP 7.2!**
- including Zend Guard Loader for PHP 5.6

##### Tip: Try NFS share instead of the synced folder. Just uncomment in your Vagrantfile

### Magento ready
- tested with Magento 2.2

### Laravel ready
- tested with Laravel 5.6

### Oxid 6 ready
- tested with Oxid 6 (PHP 7)
- tested with Oxid PE 4.10 CE / PE (PHP 5.6)
- tested with Oxid Enterprise 5.10 (PHP 5.6)

## Features
- Ubuntu 16.04 LTS
- VirtualBox Guest Additions
- PHP 7.2 FPM
- PHP 7.1 FPM
- PHP 7.0 FPM
- MySQL 5.7
- IonCube Loader
- APCu
- Redis
- Memcached
- Vim
- Git
- cURL
- GD and Imagick
- imagick-php
- Composer
- Node
- NPM
- Mcrypt

## MySQL Access

- Hostname: localhost or 127.0.0.1
- Username: root
- Password: root

## Switching PHP-Versions:

Jimmybox comes with preconfigured virtual hosts to use multiple PHP Versions from 5.6 to 7.2. Please just edit your local hosts file to use different PHP Versions.

#### Prepare your hosts file

```bash
# PHP 5.6
192.168.33.11  jimmy56.com

# PHP 7.0
192.168.33.11  jimmy70.com

# PHP 7.1
192.168.33.11  jimmy71.com

# PHP 7.2
192.168.33.11  jimmy72.com
```

#### open Jimmybox in your browser
1) PHP 7.2: http://jimmy72.com
2) PHP 7.1: http://jimmy71.com
3) PHP 7.0: http://jimmy70.com
4) PHP 5.6: http://jimmy56.com

## Need the MySQL 5.7 strict SQL mode?
We have disabled the strict SQL mode for better compatibility with older apps. You can simply enable it doing this:

```bash
vagrant ssh
sudo rm /etc/mysql/conf.d/disable_strict_mode.cnf
sudo service mysql restart
```

## Troubles with APCu?
In some cases, APCu could cause troubles. You can disable APCu using the following commands

```bash
vagrant ssh
sudo apt-get remove php-apcu
sudo service apache2 restart
```

## Vagrant sharing with ngrok.
vagrant share has been removed with Vagrant 2.0. We use ngrok instead to share our boxes. Jimmybox is pre-configured for ngrok.

Get started with ngrok here:
https://ngrok.com

You should customize the virtual hosts regarding to your needs

```bash
vagrant ssh
cd /etc/apache2/sites-available

# edit config file (f.e. 000-php7.1.conf)
sudo vim any-config-file.conf

# Change the ServerAlias or add your ngrok domain, for example
ServerAlias jimmy72.sternpunkt.ngrok.io

# after that, save the new settings and restart or reload your apache
sudo service apache2 reload
```
