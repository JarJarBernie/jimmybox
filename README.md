![alt tag](https://raw.githubusercontent.com/JarJarBernie/jimmybox/master/public/src/jimmybox.png)

# jimmybox 2.2: web developer box with multiple PHP Versions
vagrant box for PHP Developers with IonCube Integration for professional web development. Works with Shopware and many other applications and frameworks such as Magento, Oxid 6, Wordpress, Typo3 or Laravel 5.8.

## Quick Setup:
1) Get the latest Versions of Vagrant and Virtual Box

2) clone the latest version and run vagrant up
```bash
git clone https://github.com/JarJarBernie/jimmybox.git .
vagrant up
```

3) open **192.168.33.11** in your browser (default PHP Version is 7.3)

(IP can be changed in your Vagrantfile, the "public" directory is your document root)

## Made for PHP professionals and E-Commerce developers
### Shopware ready´
- tested with Shopware 5.6
- use PHP 7.2/7.3 Performance in Shopware
- comes with **APCu & IonCube Loader for all PHP Versions**
- including Zend Guard Loader for PHP 5.6

##### Tip: Try NFS share instead of the synced folder. Just uncomment in your Vagrantfile

### Magento ready
- tested with Magento 2.2

### Laravel ready
- tested with Laravel 5.8

### Oxid 6 ready
- tested with Oxid 6.1 (PHP 7.0 - 7.2)
- tested with Oxid PE 4.10 CE / PE (PHP 5.6)
- tested with Oxid Enterprise 5.10 (PHP 5.6)

## Features
- Ubuntu 16.04 LTS
- VirtualBox Guest Additions
- PHP 7.4 FPM
- PHP 7.3 FPM
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
- Node.js (12.10)
- NPM (6.9)
- Mcrypt

## MySQL Access

- Hostname: localhost or 127.0.0.1
- Username: root
- Password: root

## Switching PHP-Versions:

Jimmybox comes with preconfigured virtual hosts to use multiple PHP Versions from 5.6 to 7.4. Please just edit your local hosts file to use different PHP Versions.

#### Prepare your hosts file

```bash
# PHP 7.4
192.168.33.11  jimmy74.com

# PHP 7.3
192.168.33.11  jimmy73.com

# PHP 7.2
192.168.33.11  jimmy72.com

# PHP 7.1
192.168.33.11  jimmy71.com

# PHP 7.0
192.168.33.11  jimmy70.com

# PHP 5.6
192.168.33.11  jimmy56.com
```

#### open Jimmybox in your browser
- PHP 7.4: http://jimmy74.com
- PHP 7.3: http://jimmy73.com
- PHP 7.2: http://jimmy72.com
- PHP 7.1: http://jimmy71.com
- PHP 7.0: http://jimmy70.com
- PHP 5.6: http://jimmy56.com

## Provisioning & custom hosts setup
You can use our provisioning template to setup your custom hosts.

1. place your hosts.conf files in povisioning/hosts/ and edit them regarding to your needs
2. open provisioning/setup/apache.sh and add code to enable/disable your custom hosts. This will ensure that your hosts only will be enabled if the directory exists.
3. if needed, copy your SSL certs to provisioning/ssl/ and link it in your custom hosts config file
4. restart vagrant with the provisioning flag and your vhosts will get enabled if the vhosts dir exists.

````nashorn js
vagrant reload --provision
````

## Need the MySQL 5.7 strict SQL mode?
We have disabled the strict SQL mode for better compatibility with older apps. You can simply enable it doing this:

```bash
vagrant ssh
sudo rm /etc/mysql/conf.d/disable_strict_mode.cnf
sudo service mysql restart
```

## Troubles with APCu?
In some cases, APCu can cause troubles. You can disable APCu using the following commands

```bash
vagrant ssh
sudo apt-get remove php-apcu
sudo service apache2 restart
```

## NFS Share in MacOS Catalina 10.15
In Catalina NFS seems to have troubles finding a relative path in your synced folder.
You can avoid this if you just use an absolute Path (/Volumes/...)
```bash
config.vm.synced_folder "/Volumes/Macintosh HD/Users/your-user/Sites", "/var/www", type: 'nfs', mount_options: ['rw', 'vers=3', 'tcp', 'fsc' ,'actimeo=1']
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

## upgrading from older Jimmybox Versions
Please do not use vagrant box update if you are using jimmybox 1.x! Better create a new version instead an migrate your data manually.
