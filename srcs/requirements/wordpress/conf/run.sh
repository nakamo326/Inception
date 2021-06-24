#! bin/sh

eval "echo \"$(cat /tmp/wp-conf-tmpl.php)\"" > /var/www/html/wp-config.php

exec php-fpm7 -F -R