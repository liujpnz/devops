root@webserver:/etc# groupadd apache

#root@webserver:/etc# useradd -d /home/apache -g apache apache

adduser apache

root@docker:/etc# usermod -aG sudo apache
root@docker:/etc# usermod -aG www-data apache

root@webserver:/home# chown apache:apache apache


vi sudoer



apache@webserver:~$ sudo apt-get install apache2
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following additional packages will be installed:
  apache2-bin apache2-data apache2-utils libapr1 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap liblua5.2-0 ssl-cert
Suggested packages:
  www-browser apache2-doc apache2-suexec-pristine | apache2-suexec-custom openssl-blacklist
The following NEW packages will be installed:
  apache2 apache2-bin apache2-data apache2-utils libapr1 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap liblua5.2-0 ssl-cert
0 upgraded, 10 newly installed, 0 to remove and 38 not upgraded.
Need to get 1729 kB of archives.
After this operation, 6978 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://azure.archive.ubuntu.com/ubuntu bionic/main amd64 libapr1 amd64 1.6.3-2 [90.9 kB]
Get:2 http://azure.archive.ubuntu.com/ubuntu bionic/main amd64 libaprutil1 amd64 1.6.1-2 [84.4 kB]
Get:3 http://azure.archive.ubuntu.com/ubuntu bionic/main amd64 libaprutil1-dbd-sqlite3 amd64 1.6.1-2 [10.6 kB]
Get:4 http://azure.archive.ubuntu.com/ubuntu bionic/main amd64 libaprutil1-ldap amd64 1.6.1-2 [8764 B]
Get:5 http://azure.archive.ubuntu.com/ubuntu bionic/main amd64 liblua5.2-0 amd64 5.2.4-1.1build1 [108 kB]
Get:6 http://azure.archive.ubuntu.com/ubuntu bionic-updates/main amd64 apache2-bin amd64 2.4.29-1ubuntu4.2 [1071 kB]
Get:7 http://azure.archive.ubuntu.com/ubuntu bionic-updates/main amd64 apache2-utils amd64 2.4.29-1ubuntu4.2 [83.5 kB]
Get:8 http://azure.archive.ubuntu.com/ubuntu bionic-updates/main amd64 apache2-data all 2.4.29-1ubuntu4.2 [160 kB]
Get:9 http://azure.archive.ubuntu.com/ubuntu bionic-updates/main amd64 apache2 amd64 2.4.29-1ubuntu4.2 [95.1 kB]
Get:10 http://azure.archive.ubuntu.com/ubuntu bionic/main amd64 ssl-cert all 1.0.39 [17.0 kB]
Fetched 1729 kB in 6s (290 kB/s)     
Preconfiguring packages ...
Selecting previously unselected package libapr1:amd64.
(Reading database ... 56520 files and directories currently installed.)
Preparing to unpack .../0-libapr1_1.6.3-2_amd64.deb ...
Unpacking libapr1:amd64 (1.6.3-2) ...
Selecting previously unselected package libaprutil1:amd64.
Preparing to unpack .../1-libaprutil1_1.6.1-2_amd64.deb ...
Unpacking libaprutil1:amd64 (1.6.1-2) ...
Selecting previously unselected package libaprutil1-dbd-sqlite3:amd64.
Preparing to unpack .../2-libaprutil1-dbd-sqlite3_1.6.1-2_amd64.deb ...
Unpacking libaprutil1-dbd-sqlite3:amd64 (1.6.1-2) ...
Selecting previously unselected package libaprutil1-ldap:amd64.
Preparing to unpack .../3-libaprutil1-ldap_1.6.1-2_amd64.deb ...
Unpacking libaprutil1-ldap:amd64 (1.6.1-2) ...
Selecting previously unselected package liblua5.2-0:amd64.
Preparing to unpack .../4-liblua5.2-0_5.2.4-1.1build1_amd64.deb ...
Unpacking liblua5.2-0:amd64 (5.2.4-1.1build1) ...
Selecting previously unselected package apache2-bin.
Preparing to unpack .../5-apache2-bin_2.4.29-1ubuntu4.2_amd64.deb ...
Unpacking apache2-bin (2.4.29-1ubuntu4.2) ...
Selecting previously unselected package apache2-utils.
Preparing to unpack .../6-apache2-utils_2.4.29-1ubuntu4.2_amd64.deb ...
Unpacking apache2-utils (2.4.29-1ubuntu4.2) ...
Selecting previously unselected package apache2-data.
Preparing to unpack .../7-apache2-data_2.4.29-1ubuntu4.2_all.deb ...
Unpacking apache2-data (2.4.29-1ubuntu4.2) ...
Selecting previously unselected package apache2.
Preparing to unpack .../8-apache2_2.4.29-1ubuntu4.2_amd64.deb ...
Unpacking apache2 (2.4.29-1ubuntu4.2) ...
Selecting previously unselected package ssl-cert.
Preparing to unpack .../9-ssl-cert_1.0.39_all.deb ...
Unpacking ssl-cert (1.0.39) ...
Setting up libapr1:amd64 (1.6.3-2) ...
Processing triggers for ufw (0.35-5) ...
Processing triggers for ureadahead (0.100.0-20) ...
Setting up apache2-data (2.4.29-1ubuntu4.2) ...
Setting up ssl-cert (1.0.39) ...
Processing triggers for libc-bin (2.27-3ubuntu1) ...
Setting up libaprutil1:amd64 (1.6.1-2) ...
Processing triggers for systemd (237-3ubuntu10) ...
Processing triggers for man-db (2.8.3-2) ...
Setting up liblua5.2-0:amd64 (5.2.4-1.1build1) ...
Setting up libaprutil1-ldap:amd64 (1.6.1-2) ...
Setting up libaprutil1-dbd-sqlite3:amd64 (1.6.1-2) ...
Setting up apache2-utils (2.4.29-1ubuntu4.2) ...
Setting up apache2-bin (2.4.29-1ubuntu4.2) ...
Setting up apache2 (2.4.29-1ubuntu4.2) ...
Enabling module mpm_event.
Enabling module authz_core.
Enabling module authz_host.
Enabling module authn_core.
Enabling module auth_basic.
Enabling module access_compat.
Enabling module authn_file.
Enabling module authz_user.
Enabling module alias.
Enabling module dir.
Enabling module autoindex.
Enabling module env.
Enabling module mime.
Enabling module negotiation.
Enabling module setenvif.
Enabling module filter.
Enabling module deflate.
Enabling module status.
Enabling module reqtimeout.
Enabling conf charset.
Enabling conf localized-error-pages.
Enabling conf other-vhosts-access-log.
Enabling conf security.
Enabling conf serve-cgi-bin.
Enabling site 000-default.
Created symlink /etc/systemd/system/multi-user.target.wants/apache2.service → /lib/systemd/system/apache2.service.
Created symlink /etc/systemd/system/multi-user.target.wants/apache-htcacheclean.service → /lib/systemd/system/apache-htcacheclean.service.
Processing triggers for libc-bin (2.27-3ubuntu1) ...
Processing triggers for ureadahead (0.100.0-20) ...
Processing triggers for systemd (237-3ubuntu10) ...
Processing triggers for ufw (0.35-5) ...





$ sudo systemctl status apache2
$ sudo systemctl stop apache2
$ sudo systemctl start apache2
$ sudo systemctl restart apache2
$ sudo systemctl reload apache2
$ sudo systemctl enable apache2
$ sudo systemctl disable apache2



#install mysql-server
sudo apt-get install mysql-server

#
mysql_secure_installation


#install php

apt-get install php


sed -i "s/short_open_tag = .*/short_open_tag = On/" /etc/php/7.0/apache2/php.ini 
<? phpinfo();
PHP is installed by default with short tags off. Either change your code or change php.ini.
This sed command will do the trick if you opt to turn short tags on.




#configure sql server drive for php
https://docs.microsoft.com/en-us/sql/connect/php/installation-tutorial-linux-mac?view=sql-server-2017


#apt-get install php-pear php-dev

sudo apt-get install -f php-pear


