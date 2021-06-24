NAME = inception

SRCDIRS = ./srcs
YML = ./srcs/docker-compose.yml

all: $(NAME)

$(NAME):
	docker-compose -f $(YML) up -d --build

down:
	docker-compose -f $(YML) down

clean:


fclean:


re: fclean all

.PHONY: all clean fclean re
