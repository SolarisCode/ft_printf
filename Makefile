# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: melkholy <melkholy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/25 23:23:16 by melkholy          #+#    #+#              #
#    Updated: 2022/09/04 01:51:32 by melkholy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
NAME = libftprintf.a
CDIR = .
LIBFTDIR = ./libft/
LIBFT = ./libft/libft.a
CFLAGS = -Wall -Werror -Wextra


CFILES = ft_printf.c alloc_width_prec.c \
			format_wandp.c hexa_and_ptr.c \
			int_and_unsigned.c speci_width_prec.c \
			string_and_char.c

OBJ = ${CFILES:.c=.o}

all : $(NAME)

$(NAME) : $(LIBFT)
	@$(CC) $(CFLAGS) -I$(CDIR) -c $(CFILES)
	@ar -rs $(NAME) $(OBJ)
	@ranlib $(NAME)

$(LIBFT) :
	@make -C $(LIBFTDIR)
	@cp $(LIBFT) $(NAME)

clean :
	@make clean -C $(LIBFTDIR)
	@rm -f $(OBJ)

fclean : clean
	@make fclean -C $(LIBFTDIR)
	@rm -r $(NAME)

re : fclean all

.PHONY : all bonus clean fclean re
