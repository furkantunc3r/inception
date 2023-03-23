all:
	@mkdir -p /${HOME}/data/db 
	@mkdir -p /${HOME}/data/wordpress
	@docker-compose -f ./srcs/docker-compose.yaml up -d --build

volume_rm:
	docker volume rm srcs_DB srcs_WordPress

clean:
	docker stop mariadb nginx wordpress
	@docker rm mariadb nginx wordpress
	@docker image rm srcs_nginx srcs_mariadb srcs_wordpress
	@sudo rm -rf /${HOME}/data/db /${HOME}/data/wordpress
	@docker system prune -af
	@docker volume rm srcs_DB srcs_WordPress
