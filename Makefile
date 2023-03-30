##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## dop
##

SRC 	=	./src/my_putstr.c \

MAIN 	=	./main.c \

CC 	=	gcc

RM 	=	rm -f

NAME 	=	choco_test

CFLAGS 	=	-Wall -Wextra

CPPFLAGS 	=	-I ./include

OBJ 	=	$(SRC:.c=.o)

TEST_SRC	=	./tests/test_my_putstr.c \

TEST_OBJ	=	$(TEST_SRC:.c=.o)

TEST_NAME	=	unit_test

TEST_FLAGS	=	--coverage -lcriterion

all:	$(NAME)

$(NAME):	$(OBJ)
	$(CC) $(SRC) $(MAIN) -o $(NAME) $(CFLAGS) $(CPPFLAGS)

clean:
	$(RM) $(OBJ)

clean_tests:
	$(RM) *.gcda
	$(RM) *.gcno

fclean:		clean
	$(RM) $(NAME)
	$(RM) $(TEST_NAME)

tests_run: clean_tests
tests_run: SRC	+=	$(TEST_SRC)
tests_run: CFLAGS	+=	$(TEST_FLAGS)
tests_run: $(TEST_OBJ) $(OBJ)
	$(CC) -o $(TEST_NAME) $(CFLAGS) $(SRC)

re:		fclean all

.PHONY: 	all clean fclean re tests_run clean_tests
