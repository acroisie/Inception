FROM	debian:buster

RUN		apt-get update -y \
		&& apt-get upgrade -y \
		&& apt-get install wget -y \
		&& apt-get install php-fpm -y

ADD		https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar  /usr/local/bin/wp

RUN 	chmod +x /usr/local/bin/wp \
		&& mkdir -p /var/www/html/wordpress \
		&& cd /var/www/html/wordpress \
		&& wp core download --allow-root

EXPOSE	3306 9000

CMD 	["tail", "-f"]