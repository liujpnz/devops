Create user for Ubuntu Magento

adduser magento_user_dev

=>pass: ***

 

groups magento_user_dev

usermod -aG sudo magento_user_dev

usermod -aG www-data magento_user_dev

 

Check primary group of user:

id magento_user_dev

 

Change the primary group:

usermod -g www-data magento_user_dev

 

#Add ubuntu user to group www-data
usermod -aG www-data ubuntu

 

 

Nginx: root:
apt-get -y install nginx

PHP:
apt-get -y update
add-apt-repository ppa:ondrej/php
apt-get -y update
apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-common php7.0-gd php7.0-mysql php7.0-mcrypt php7.0-curl php7.0-intl php7.0-xsl php7.0-mbstring php7.0-zip php7.0-bcmath php7.0-iconv php7.0-soap

 

apt-get -y install php7.0-fpm php7.0-cli

 

php -v

php -me

 

vim /etc/php/7.0/fpm/php.ini
vim /etc/php/7.0/cli/php.ini

 

date.timezone = Pacific/Auckland

memory_limit = 2G
max_execution_time = 1800
zlib.output_compression = On

 

Restart the php-fpm service:

systemctl restart php7.0-fpm

 

Install Composer globally.
You’ll need Composer to update dependencies before installing Magento:

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/bin --filename=composer

 

Configure nginx work with PHP
vim /etc/nginx/sites-available/magento

 

upstream fastcgi_backend {
    server  unix:/run/php/php7.0-fpm.sock;
}

server {
    listen 80;
    server_name b2bdev.tradedepot.co.nz;
    set $MAGE_ROOT /var/www/html/magento2/b2b;

    include /var/www/html/magento2/b2b/nginx.conf.sample;
}

 

Activate the newly created virtual host by creating a symlink to it in the /etc/nginx/sites-enabled directory:

ln -s /etc/nginx/sites-available/magento /etc/nginx/sites-enabled

 

Verify that the syntax is correct:

nginx -t

 

Restart nginx:

systemctl restart nginx




---mysql
apt install -y mysql-server mysql-client

root / ***

cd /etc/mysql/
grep -rl "max_allowed_packet" 
vim mysql.conf.d/mysqld.cnf

 
max_allowed_packet = 1G
service mysql restart



sudo find var vendor pub/static pub/media app/etc -type f -exec chmod g+w {} \;
sudo find var vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} \;
sudo chown -R magento_user:www-data .
sudo chmod u+x bin/magento


cd /var/www/html/magento2
composer install -v


