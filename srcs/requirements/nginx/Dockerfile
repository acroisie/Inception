FROM	debian:buster

RUN		apt-get update -y \
		&& apt-get upgrade -y \
		&& apt-get install nginx -y \
		&& apt-get install -y openssl

RUN		openssl req -x509 -sha256 \
		-nodes -days 365 -newkey rsa:4096 \
		-keyout /etc/ssl/private/acroisie.key \
		-out /etc/ssl/certs/acroisie.crt -subj /C=FR

COPY	./conf/nginx.conf /etc/nginx/conf.d/

EXPOSE	443 9000

CMD		["nginx", "-g", "daemon off;"]