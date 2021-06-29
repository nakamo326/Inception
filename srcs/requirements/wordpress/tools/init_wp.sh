#! bin/sh

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
mkdir -p /var/www/html
wp core download --locale=ja --path=/var/www/html/
cd /var/www/html
wp config create --skip-check \
--dbname=${MYSQL_DATABASE} \
--dbuser=${MYSQL_USER} \
--dbpass=${MYSQL_PASSWORD} \
--dbhost=mariadb \
--skip-salts \
--extra-php <<PHP
define('WP_CACHE_KEY_SALT', '$DOMAIN_NAME');
define('WP_CACHE', true);
define( 'WP_REDIS_HOST', 'redis' );
define( 'WP_REDIS_PORT', 6379 );
define( 'WP_DEBUG', true );
PHP
