FROM	debian:buster

RUN		apt-get update -y && apt-get upgrade -y && apt-get install nginx -y

CMD		["nginx", "-g", "daemon off;"]

# RUN		apt-get install nginx -y