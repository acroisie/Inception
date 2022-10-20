NAME = Inception

all :
	docker system prune -af --volumes
	docker-compose --project-directory srcs up -d --build
