#! bin/sh

# wp user create $ADMIN_USER $ADMIN_MAIL --user_pass=$ADMIN_PASS --role=asministrator
# wp user create $AUTHOR_USER $AUTHOR_MAIL --user_pass=$AUTHOR_PASS --role=author

exec php-fpm7 -F -R