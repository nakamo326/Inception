NAME = inception
DOMAIN = ynakamot.42.fr

SRCDIRS = ./srcs
YML = ./srcs/docker-compose.yml

all: $(NAME)

$(NAME):
	docker-compose -f $(YML) up -d

down:
	docker-compose -f $(YML) down

set_up: volume add_host extract_wp copy_doc
	docker-compose -f $(YML) up -d --build

volume:
	mkdir -p /home/ynakamot/data/mariadb
	mkdir -p /home/ynakamot/data/wordpress

add_host:
	echo "127.0.0.1 $(DOMAIN)" >> /etc/hosts

extract_wp:
	curl https://ja.wordpress.org/latest-ja.zip -o wp_site.zip
	unzip wp_site.zip
	cp -r wordpress/* /home/ynakamot/data/wordpress
	rm -rf wp_site.zip wordpress

copy_doc:
	cp -r srcs/requirements/bonus/document /home/ynakamot/data

clean:


fclean:


re: fclean all

.PHONY: all clean fclean re
