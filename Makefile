all : volumes
	docker-compose --project-directory srcs up -d --build

# linux:
# 	echo "127.0.0.1 vchevill.42.fr" >> /etc/hosts // Bricoler les var pour raccourci

down :
	docker-compose --project-directory srcs down -v

volumes:
	mkdir -p /Users/arnaud/home/$(USER)/data/WordPress
	mkdir -p /Users/arnaud/home/$(USER)/data/DB

clean: down
	docker system prune -af

fclean: down
	docker system prune -af --volumes
	rm -rf /Users/arnaud/home/$(USER)/data/*

re: fclean all

.PHONY:	all down mariadb volumes clean fclean re