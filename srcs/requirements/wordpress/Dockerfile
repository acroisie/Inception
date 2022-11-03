FROM	debian:buster

RUN		apt-get update -y \
		&& apt-get upgrade -y \
		&& apt-get install wget -y \
		&& apt-get install php-fpm php-mysql -y \
		&& service php7.3-fpm start && service php7.3-fpm stop

COPY	./conf/www.conf /etc/php/7.3/fpm/pool.d

COPY	./tools /var/www/

RUN		chmod +x /var/www/install.sh

EXPOSE	3306 9000

CMD		["sh", "/var/www/install.sh"]