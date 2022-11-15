all : volumes
	docker-compose --project-directory srcs up -d --build

linux:
	echo "127.0.0.1 acroisie.42.fr" >> /etc/hosts

down :
	docker-compose --project-directory srcs down -v

volumes:
	mkdir -p /home/$(USER)/data/WordPress
	mkdir -p /home/$(USER)/data/DB

clean: down
	docker system prune -af --volumes

fclean: down
	docker system prune -af --volumes
	rm -rf /home/$(USER)/data/*

re: clean all

.PHONY:	all down mariadb volumes clean fclean re