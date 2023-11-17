CC = cc
C_FILES = ft_printf.c ft_putnbr.c ft_set_flags.c ft_print_flags.c \
ft_string_filter.c ft_print_format.c ft_puthexa.c ft_putchar_and_incr.c\
ft_count_length.c ft_get_size.c ft_atoi_for_flags.c
O_FILES = $(C_FILES:.c=.o)
FLAGS = -Wall -Wextra -Werror
NAME = libftprintf.a

all:$(NAME)

bonus:all

$(NAME):$(O_FILES)
	ar -rcs $(NAME) $(O_FILES)

%.o:%.c ft_printf.h
	$(CC) $(FLAGS) -c $< -o $@

clean:
	rm -f $(O_FILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re