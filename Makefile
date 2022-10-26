NAME = Inception

all : volumes
	# docker system prune -af --volumes
	docker-compose --project-directory srcs up -d --build

down :
	docker-compose --project-directory srcs down

mariadb :
	docker exec -it mariadb bash

volumes:
	mkdir -p ~/home/$(USER)/data/WordPress
	mkdir -p ~/home/$(USER)/data/DB