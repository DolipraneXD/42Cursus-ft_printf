.PHONY: all clean fclean re

NAME= libftprintf.a
CC=cc
FLAGS= -Wall -Wextra -Werror
RM=rm -rf
CFILES= ft_printf.c \
		ft_toolsbase.c

OBJ= $(CFILES:.c=.o)

all:$(NAME)

%.o : %.c ft_printf.h
	$(CC) $(FLAGS) -c -o $@ $<

$(NAME):$(OBJ)
	ar -rc $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean:clean
	$(RM) $(NAME)

re:fclean all
