SRCS = 

OBJS = $(SRCS:.c=.o)

CFLAGS = -Werror -Wextra -Wall

NAME = libasm.a

all: $(NAME)

CC = cc

%.o : %.c 
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME) : $(OBJS)
	ar rcs $(NAME) $(OBJS)


clean:
	rm -rf $(OBJS)

fclean:
	rm -rf $(OBJS) $(NAME)

re: fclean all

.PHONY:	all clean fclean re