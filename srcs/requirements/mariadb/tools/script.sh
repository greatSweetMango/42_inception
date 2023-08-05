#!/bin/bash

# mysql_install_db --user=mysql --ldata=/var/lib/mysql
# sudo mariadb-secure-installation

/etc/init.d/mariadb start
# service mariadb start

mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_USER_PASSWORD';"
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';"
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"

# /etc/init.d/mariadb stop
# service mysql stop
pkill -f mysqld

# sleep 100000
mysqld
# mysqld --user=mysql --foreground
# /usr/sbin/mysqld --user=mysql