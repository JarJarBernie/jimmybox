![alt tag](https://raw.githubusercontent.com/JarJarBernie/jimmybox/master/public/src/jimmybox.png)

# jimmybox 1.1: PHP 7 Developer box
vagrant box for PHP 7 Developers IonCube Integration for professional Shopware Development. Works with many other applications and frameworks such as Magento, Wordpress, Typo3 or Laravel 5.3.

## Quick Setup:
1) clone to any directory you like (f.e. mkdir ~/Vagrant/jimmybox && cd ~/Vagrant/jimmybox)

2) git clone https://github.com/JarJarBernie/jimmybox.git .

3) vagrant up

## Made for PHP professionals and E-Commerce Developers
### Shopware ready
- tested with Shopware 5.2.8
- use PHP 7 Performance in Shopware
- 5x faster during development than PHP 5.6
- comes with **IonCube Loader for PHP 7!**

##### Tip: Try NFS share instead of the synced folder. Just uncomment in your Vagrantfile

### Magento ready
- tested with Magento 2.1

### Laravel ready
- tested with Laravel 5.3


## Features
- Ubuntu 14.04 LTS (Trusty Tahr)
- PHP 7.0.12
- MySQL 5.7
- IonCube Loader
- Ruby 2.2.x
- Vim
- Git
- cURL
- GD and Imagick
- Composer
- Beanstalkd
- Node
- NPM
- Mcrypt

## MySQL Access

- Hostname: localhost or 127.0.0.1
- Username: root
- Password: root

## All features are based on scotch/box:
https://github.com/scotch-io/scotch-box

- Laravel ready
- Caching (Redis, Memcache, Memcached)