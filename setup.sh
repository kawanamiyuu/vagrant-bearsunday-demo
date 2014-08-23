#!/bin/bash

# install basic packages
yum install -y gcc libxml2 libxml2-devel libcurl libcurl-devel openssl openssl-devel git

# install epel repository
rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

# install remi repository
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

# install php5.5 and extensions
yum --enablerepo=remi,remi-php55 install -y php php-devel php-common php-cli php-xml php-mbstring php-pdo php-pecl-xdebug php-pecl-apcu php-pecl-uri-template php-pecl-xhprof

# install composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/vagrant

# create BEAR.Sunday project
rm -rf /vagrant/bear
mkdir /vagrant/bear
php /vagrant/composer.phar create-project bear/package /vagrant/bear dev-develop

service iptables stop
chkconfig iptables off
