#! bin/sh

cd /var/www/html

wp core is-installed
if [ $? -ne 0 ]; then
    wp core install --skip-email --allow-root \
    --url=https://$DOMAIN_NAME/ \
    --title=Inception \
    --admin_user=$ADMIN_USER \
    --admin_password=$ADMIN_PASS \
    --admin_email=$ADMIN_MAIL
    wp theme activate twentytwentyone
fi

wp user get $AUTHOR_USER
if [ $? -ne 0 ]; then
    wp user create $AUTHOR_USER $AUTHOR_MAIL --user_pass=$AUTHOR_PASS --role=author
fi

wp plugin is-installed redis
if [ $? -ne 0 ]; then
    wp plugin install redis-cache --activate
    wp redis enable
fi

exec php-fpm7 -F -R
