NAME = Inception

all : volumes
	docker-compose --project-directory srcs up -d --build

down :
	docker-compose --project-directory srcs down -v

mariadb :
	docker exec -it mariadb bash

volumes:
	mkdir -p /Users/arnaud/home/$(USER)/data/WordPress
	mkdir -p /Users/arnaud/home/$(USER)/data/DB

clean: down
	docker system prune -af

fclean: down
	docker system prune -af --volumes
	docker volume prune -f
	rm -rf /Users/arnaud/home/$(USER)/data/*

re: fclean all

.PHONY:	all down mariadb volumes clean fclean re