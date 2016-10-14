![alt tag](https://raw.githubusercontent.com/JarJarBernie/jimmybox/master/public/src/jimmybox.png)

# jimmybox: PHP 7 vagrant box
vagrant box for PHP 7 Developers based on scotch box 2.5 with IonCube Integration for Shopware Development.

## Quick Setup:
1) clone to any directory you like (f.e. mkdir ~/Vagrant/jimmybox && cd ~/Vagrant/jimmybox)
2) git clone https://github.com/JarJarBernie/jimmybox.git .
3) vagrant up

## Shopware ready
- use PHP 7 Performance in Shopware Development

- 5x faster during development than 5.6

- IonCube Loader for PHP 7

##### Tip: Try NFS share instead of the synced folder. Just uncomment in your Vagrantfile


## Features
- Ubuntu 14.04 LTS (Trusty Tahr)
- PHP 7.0.11
- MySQL 5.5
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

## MySQL 5.5 Access

- Hostname: localhost or 127.0.0.1
- Username: root
- Password: root

## All features are based on scotch/box:
https://github.com/scotch-io/scotch-box

- Laravel ready
- Caching (Redis, Memcache, Memcached)