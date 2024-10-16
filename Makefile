NAME = a.out

LIBASM = ./libasm/libasm.a

SRCS = ./main.c

HEADER = ./header.h

OBJS = $(SRCS:.c=.o)

CFLAGS = -z noexecstack

all: $(NAME) $(LIBASM)

CC = cc

%.o : %.c 
	$(CC) $(CFLAGS) -c $< -o $@ 

$(NAME) : $(OBJS) $(LIBASM)
	$(CC) -I $(HEADER) $(CFLAGS) $(OBJS) $(LIBASM) -o $(NAME)

$(LIBASM) : 
	@make -C ./libasm

clean:
	@make clean -C ./libasm
	rm -rf $(OBJS)

fclean:
	@make fclean -C ./libasm
	rm -rf $(OBJS) $(NAME)

re: fclean all

.PHONY:	all clean fclean re

