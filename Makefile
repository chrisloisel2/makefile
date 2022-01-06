NAME =	test

SRC =	src/stack/test.c\
		src/main.c

H =		include/test.h

I =		-I include/

FLAGS =	-Wextra -Werror -Wall

GCC =	gcc

%.o : %.c
	$(GCC) $(I) -o $@ -c $<

O =		${SRC:.c=.o}

all :
	@make $(NAME)

$(NAME) : $O $H
	$(GCC) $(FLAGS) $O -o $(NAME)

re : fclean all

fclean :
	rm -rf $O $(NAME)

clean :
	rm -rf $O

git :
	@git add --all

.PHONY : all re fclean clean
