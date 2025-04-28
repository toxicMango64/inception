PHONY = all
all: up

PHONY += up
up:
	mkdir -p ${HOME}/data/wordpressData/ ${HOME}/data/mariadb/
	docker-compose -f ./srcs/docker-compose.yml up

PHONY += down
down:
	docker-compose -f ./srcs/docker-compose.yml down

PHONY += clean
clean: down
	yes | docker system prune -a
	docker-compose -f ./srcs/docker-compose.yml down -v
	sudo rm -rf ${HOME}/data/wordpressData/ ${HOME}/data/mariadb/
	docker volume prune -f

PHONY += re
re: clean all up

.PHONY: ${PHONY}
