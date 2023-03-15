# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marirodr <marirodr@student.42malaga.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/22 13:21:44 by marirodr          #+#    #+#              #
#    Updated: 2022/10/05 13:41:12 by marirodr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= 	libft.a

SRC			= 	ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isdigit.c \
				ft_isprint.c ft_memset.c ft_strlcat.c ft_strchr.c ft_strrchr.c \
				ft_strlcpy.c ft_strlen.c ft_tolower.c ft_toupper.c ft_bzero.c \
				ft_strncmp.c ft_strnstr.c ft_atoi.c ft_memcpy.c ft_memmove.c \
				ft_memchr.c ft_memcmp.c ft_calloc.c ft_strdup.c ft_substr.c \
				ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
				ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
				ft_putnbr_fd.c \

OBJT		= 	$(SRC:.c=.o)

BONUS		=	ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c \
				ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c \
				ft_lstmap_bonus.c \

BONUS_OBJT	= 	${BONUS:.c=.o}

CFLAGS 		= 	-Wall -Werror -Wextra

all:			$(NAME)

$(NAME):
				gcc -c $(CFLAGS) $(SRC)
				ar rcs $(NAME) $(OBJT)

bonus:			$(OBJT) $(BONUS_OBJT)
				ar rcs $(NAME) $(OBJT) $(BONUS_OBJT)

clean:
				rm -f $(OBJT) $(BONUS_OBJT)

fclean:			clean
				rm -f $(NAME)

re:				fclean all

.PHONY: all, clean, fclean, re
