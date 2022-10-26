FROM	debian:buster

RUN		apt-get update -y \
		&& apt-get upgrade -y \
		&& apt-get install wget -y \
		&& apt-get install php-fpm -y

EXPOSE 3306 9000

CMD 	["tail", "-f"]