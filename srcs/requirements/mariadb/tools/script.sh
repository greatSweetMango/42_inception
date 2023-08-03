#!/bin/bash

#/etc/init.d/mariadb start
#echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=(1)'
#echo "CREATE DATABASE IF NOT EXISTS $DB_NAME ;" | mysql -u root
#echo "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_USER_PASSWORD' ;" | mysql -u root
#echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' ;" | mysql -u root
#echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' ;" | mysql -u root
#echo "FLUSH PRIVILEGES;" | mysql -u root
#echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=(2)'
##mysql -u root -p$MYSQL_ROOT_PASSWORD < initdb.sql
#echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=(3)'
##sudo mysql -u root -p$MYSQL_ROOT_PASSWORD -e "SHUTDOWN;"
#sudo /etc/init.d/mariadb stop
#echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=(4)'
#chmod +x /run/mysqld/mysqld.sock
mysqld -u root -p$MYSQL_ROOT_PASSWORD
echo '-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=(5)'