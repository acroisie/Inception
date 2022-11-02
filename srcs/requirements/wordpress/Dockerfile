FROM	debian:buster

ARG		MYSQL_DATABASE
ARG		MYSQL_USER
ARG		MYSQL_PASSWORD
ARG		MYSQL_HOST

ARG		DOMAIN_NAME
ARG		WP_SITE_TITLE
ARG		WP_ADMIN
ARG		WP_ADMIN_PASSWORD
ARG		WP_ADMIN_EMAIL

RUN		apt-get update -y \
		&& apt-get upgrade -y \
		&& apt-get install wget -y \
		&& apt-get install php-fpm php-mysql -y \
		&& service php7.3-fpm start && service php7.3-fpm stop

COPY	./conf/www.conf /etc/php/7.3/fpm/pool.d

ADD		https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar  /usr/local/bin/wp

RUN 	chmod +x /usr/local/bin/wp \
		&& mkdir -p /var/www/html/wordpress \
		&& cd /var/www/html/wordpress \
		&& wp core download --allow-root

RUN		mv /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php \
		&& 	sed -i "s|database_name_here|$MYSQL_DATABASE|" /var/www/html/wordpress/wp-config.php \
		&&	sed -i "s|username_here|$MYSQL_USER|" /var/www/html/wordpress/wp-config.php \
		&&	sed -i "s|password_here|$MYSQL_PASSWORD|" /var/www/html/wordpress/wp-config.php \
		&&	sed -i "s|localhost|$MYSQL_HOST|" /var/www/html/wordpress/wp-config.php

RUN 	cd /var/www/html/wordpress/ \
		wp core install --allow-root \
		--url=$DOMAIN_NAME --title=$WP_SITE_TITLE \
		--admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASSWORD \
		--admin_email=$WP_ADMIN_EMAIL

EXPOSE	3306 9000

WORKDIR "/var/www/html/wordpress/"

CMD		[ "php-fpm7.3", "-F" ]