FROM		debian:buster

ARG			MYSQL_ROOT_PASSWORD
ARG			MYSQL_DATABASE
ARG			MYSQL_USER
ARG			MYSQL_PASSWORD

RUN			apt-get update -y \
			&& apt-get upgrade -y \
			&& apt-get install mariadb-server -y

RUN			service mysql start \
			&& mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE; \
			ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'; \
			GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' \
			IDENTIFIED BY '$MYSQL_PASSWORD'; \
			FLUSH PRIVILEGES;"

EXPOSE		3306

ENTRYPOINT	["mysqld", "--bind-address=0.0.0.0"]