NAME	=	libft.a
SRCS	=	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c \
			ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
			ft_memccpy.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c \
			ft_memset.c ft_strchr.c ft_strdup.c ft_strlcat.c \
			ft_strlcpy.c ft_strlen.c ft_strncmp.c ft_strnstr.c \
			ft_strrchr.c ft_tolower.c ft_toupper.c ft_substr.c \
			ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
			ft_strmapi.c ft_putchar_fd.c ft_putstr_fd.c \
			ft_putendl_fd.c ft_putnbr_fd.c free_all.c\
			ft_lstadd_back.c ft_lstnew.c ft_lstsize.c \
			ft_lstlast.c ft_lstfree.c\

OBJS	=	$(SRCS:.c=.o)
CC		= 	gcc
RM		=	rm -rf
AR		=	ar rcs
RANLIB	=	ranlib
FLAGS	=	-Wall -Wextra -Werror

all:		$(NAME)

${NAME} : ${OBJS}
	${AR} ${NAME} ${OBJS}

%.o : %.c
	${CC} ${FLAGS} -c $< -o $@

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean $(NAME)

.PHONY:		all clean fclean re
