![alt tag](https://raw.githubusercontent.com/JarJarBernie/jimmybox/master/public/src/jimmybox.png)

# jimmybox 3.2: web developer box with multiple PHP versions
vagrant box for PHP Developers with IonCube Integration for professional web development. Works with Shopware and many other applications and frameworks such as Magento, Oxid 6.x, Wordpress, Typo3 or Laravel.

## Quick Setup:
1) Get the latest Versions of Vagrant and Virtual Box

2) clone the latest version and run vagrant up
```bash
git clone https://github.com/JarJarBernie/jimmybox.git .
vagrant up
```

3) open **192.168.33.11** in your browser (default PHP Version is 8.1)

(IP can be changed in your Vagrantfile, the "public" directory is your document root)

## Made for PHP professionals and E-Commerce developers
### Laravel 8 ready
- tested with Laravel 8

### Oxid 6 ready
- tested with Oxid 6.4 (PHP 7.4 - 8.1)
- tested with Oxid 6.3 (PHP 7.4 - 8.0)
- tested with Oxid 6.2 (PHP 7.1 - 7.4)
- tested with Oxid 6.1 (PHP 7.0 - 7.2)
- tested with Oxid PE 4.10 CE / PE (PHP 5.6)
- tested with Oxid Enterprise 5.10 (PHP 5.6)

### Shopware ready´
- tested with Shopware 5.6
- comes with **APCu & IonCube Loader for all PHP < 8.0**
- including Zend Guard Loader for PHP 5.6

### Wordpress ready
- tested with Wordpress 5.7

## Features
- Ubuntu 20.04 LTS
- VirtualBox Guest Additions
- Apache 2.4 with HTTP/2
- PHP 8.1 FPM
- PHP 8.0 FPM
- PHP 7.4 FPM
- PHP 7.3 FPM
- PHP 7.2 FPM
- PHP 7.1 FPM
- PHP 7.0 FPM
- MySQL 5.7
- Zend Guard Loader (PHP 5.6)
- IonCube Loader
- APCu
- Redis
- Memcached
- Vim
- Git
- cURL
- GD and Imagick
- imagick-php
- Composer 2.2
- Mcrypt
- increased disk size (128GB)

## MySQL Access

- Hostname: localhost or 127.0.0.1
- Username: root
- Password: root

## Switching PHP-Versions:

Jimmybox comes with preconfigured virtual hosts to use multiple PHP Versions from 5.6 to 8.1. Please just edit your local hosts file to use different PHP Versions.

#### Prepare your hosts file

```bash
# PHP 8.1
192.168.33.11  jimmy81.com

# PHP 8.0
192.168.33.11  jimmy80.com

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
- PHP 8.1: http://jimmy81.com
- PHP 8.0: http://jimmy80.com
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

### Switching PHP Versions in your custom hosts

Please include the following SetHandler directives in your custom vhost as seen in provisioning/hosts/100-myproject.conf.
After that, you can simply uncomment the requested line and reload your apache config (sudo service apache2 reload)

```
<FilesMatch \.php>
        SetHandler "proxy:unix:/var/run/php/php8.1-fpm.sock|fcgi://localhost/"
        # SetHandler "proxy:unix:/var/run/php/php8.0-fpm.sock|fcgi://localhost/"
        # SetHandler "proxy:unix:/var/run/php/php7.4-fpm.sock|fcgi://localhost/"
        # SetHandler "proxy:unix:/var/run/php/php7.3-fpm.sock|fcgi://localhost/"
        # SetHandler "proxy:unix:/var/run/php/php7.2-fpm.sock|fcgi://localhost/"
        # SetHandler "proxy:unix:/var/run/php/php7.1-fpm.sock|fcgi://localhost/"
        # SetHandler "proxy:unix:/var/run/php/php7.0-fpm.sock|fcgi://localhost/"
        # SetHandler "proxy:unix:/var/run/php/php5.6-fpm.sock|fcgi://localhost/"
</FilesMatch>
```

### Modify php.ini settings

Since Jimmybox 3.2 you can manage the php.ini settings from within the provisioning folder:

- modify the php.ini files for php-fpm / php-cli in provisioning/php.ini/{php-version}/fpm/php.ini
- after this perform a vagrant reload --provision

````nashorn js
vagrant reload --provision
````

-----

# Upgrade

### Upgrade from 3.x to 3.2
if you don't want to use ***vagrant box upgrade*** you can run ***vagrant reload --provision*** instead.
This will run the commands in provisioning/setup/updates.sh and install the newest versions of
- PHP 5.6 - PHP 8.1
- Composer

````bash
# uncomment this line in your Vagrantfile:
config.vm.provision "shell", path: "./provisioning/setup/updates.sh"
````

```bash
# prepare (Jimmybox must me running)
vagrant ssh
wget https://repo.mysql.com/mysql-apt-config_0.8.22-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.22-1_all.deb
sudo apt-get update
sudo apt-get upgrade

# if Jimmybox is running
vagrant reload --provision

# if Jimmybox is not running
vagrant up --provision
```

### Upgrade from older version
Please do not use vagrant box update if you are using jimmybox < 3.0! Create a new version instead an migrate your data manually.

------

# Known issues & fixes

## MacOS Monterey Fixes (network and NFS share)

After upgrading to MacOS 12.x Vagrant stops working due to an issue with Virtual Box (6.1.30). Until the issue is fixed, please use the following workaround:

- add the following line to /etc/vbox/networks.conf (file does not exist by default and has to be created)

```
* 0.0.0.0/0 ::/0
```

Vagrant will also throw an error during startup concerning the NFS Share (nfs folders uninitialized constant error).
You can fix this regarding to https://github.com/hashicorp/vagrant/issues/12583

```
sudo curl -o /opt/vagrant/embedded/gems/2.2.19/gems/vagrant-2.2.19/plugins/hosts/darwin/cap/path.rb \ 
 https://raw.githubusercontent.com/hashicorp/vagrant/42db2569e32a69e604634462b633bb14ca20709a/plugins/hosts/darwin/cap/path.rb 
```

## NFS Share in MacOS 10.15 (Catalina) / MacOS 11 (Big Sur) / MacOS 12 (Monterey)
In Catalina (and sometimes Big Sur) NFS seems to have troubles finding a relative path in your synced folder.
You can avoid this if you just use an absolute Path (/Volumes/...)
```bash
config.vm.synced_folder "/Volumes/Macintosh HD/Users/your-user/Sites", "/var/www", type: 'nfs', mount_options: ['rw', 'vers=3', 'tcp', 'fsc' ,'actimeo=1']
```

## MySQL 5.7 strict SQL mode?
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

## ioncube loader for PHP 8.0 / PHP 8.1
by the date of the release the ioncube loader is not ready for PHP 8.0. We will implement this as soon if it's available.
