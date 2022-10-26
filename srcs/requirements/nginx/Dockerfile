FROM	debian:buster

RUN		apt-get update -y \
		&& apt-get upgrade -y \
		&& apt-get install nginx -y \
		&& apt-get install -y openssl

RUN		mkdir -p /etc/nginx/ssl \
		&& openssl req -x509 -sha256 \
		-nodes -days 365 -newkey rsa:4096 \
		-keyout /etc/nginx/ssl/acroisie.42.fr.key \
		-out /etc/nginx/ssl/acroisie.42.fr.crt -subj /C=FR

EXPOSE	443 9000

CMD		["nginx", "-g", "daemon off;"]