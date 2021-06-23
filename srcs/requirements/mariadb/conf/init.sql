create user 'wordpress_user'@'wordpress' identified by 'wordpress_pass';
create database wordpressdb;
grant all privileges on wordpressdb.* to 'wordpress_user'@'wordpress' with grant option;