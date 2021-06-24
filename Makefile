NAME = inception
LOGIN = ynakamot.42.fr

SRCDIRS = ./srcs
YML = ./srcs/docker-compose.yml

all: $(NAME)

$(NAME):
	docker-compose -f $(YML) up -d --build

down:
	docker-compose -f $(YML) down

set_up: add_host


add_host:
	echo "127.0.0.1 $(LOGIN)" >> /etc/hosts

clean:


fclean:


re: fclean all

.PHONY: all clean fclean re
