create user 'wordpress'@'wordpress' identified by 'wordpress_pass';
create database wordpressdb;
grant all privileges on wordpressdb.* to 'wordpress'@'wordpress' with grant option;