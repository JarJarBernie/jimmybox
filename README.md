![alt tag](https://raw.githubusercontent.com/JarJarBernie/jimmybox/master/public/src/jimmybox.png)

# jimmybox 1.1.1: PHP 7 developer box
vagrant box for PHP 7 Developers with IonCube Integration for professional Shopware development. Works with many other applications and frameworks such as Magento, Wordpress, Typo3 or Laravel 5.3.

## Quick Setup:
1) Get the latest Versions of Vagrant and Virtual Box

2) clone the latest version and run vagrant up
```bash
git clone https://github.com/JarJarBernie/jimmybox.git .
vagrant up
```

3) open **192.168.33.11** in your browser

(IP can be changed in your Vagrantfile, the "public" directory is your document root)

## Made for PHP professionals and E-Commerce developers
### Shopware ready
- tested with Shopware 5.2.9
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
