NAME = inception
DOMAIN = ynakamot.42.fr

SRCDIRS = ./srcs
YML = ./srcs/docker-compose.yml

all: $(NAME)

$(NAME):
	docker-compose -f $(YML) up -d

down:
	docker-compose -f $(YML) down

set_up: volume add_host
	docker-compose -f $(YML) up -d --build

volume:
	mkdir -p /home/ynakamot/data/mariadb
	mkdir -p /home/ynakamot/data/wordpress

add_host:
	echo "127.0.0.1 $(DOMAIN)" >> /etc/hosts

reset:
	docker volume rm inception_wordpress-vol inception_mariadb-vol
	rm -rf /home/ynakamot/data
