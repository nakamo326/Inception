#! /bin/sh
#makeでやるべき？

curl https://ja.wordpress.org/latest-ja.zip -o wp_site.zip
unzip wp_site.zip
cp -r wordpress/* html
rm wp_site.zip
cp ./conf/wp-config.php wp_site/wp-config.php
