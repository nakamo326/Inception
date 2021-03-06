#! /bin/sh

if [ ! -d "/run/mysqld" ]; then
	mkdir -p /run/mysqld
fi
chown -R mysql:mysql /run/mysqld

mysql_install_db --user=mysql --ldata=/var/lib/mysql > /dev/null

cat << EOF > tmp.sql
USE mysql;
FLUSH PRIVILEGES ;
GRANT ALL ON *.* TO 'root'@'%' identified by '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION ;
GRANT ALL ON *.* TO 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION ;
SET PASSWORD FOR 'root'@'localhost'=PASSWORD('${MYSQL_ROOT_PASSWORD}') ;
DROP DATABASE IF EXISTS test ;
CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE CHARACTER SET $MYSQL_CHARSET COLLATE $MYSQL_COLLATION;
GRANT ALL ON $MYSQL_DATABASE.* to '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL ON $MYSQL_DATABASE.* to '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD';
FLUSH PRIVILEGES ;
EOF
# shouldn't add all grant to 'root'@'%'


/usr/bin/mysqld --user=mysql --bootstrap --verbose=0 --skip-name-resolve --skip-networking=0 < tmp.sql
rm -f tmp.sql
