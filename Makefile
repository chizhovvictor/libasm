SRCS = ./hello.asm 

OBJS = $(SRCS:.asm=.o)

FLAGS = -f elf64

NAME = libasm.a

all: $(NAME)

AS = nasm
LD = ld

%.o : %.asm 
	$(AS) $(FLAGS) $< -o $@

#$(NAME) : $(OBJS)
#	ar rcs $(NAME) $(OBJS)

$(NAME) : $(OBJS)
	$(LD) -o $(NAME) $(OBJS)

clean:
	rm -rf $(OBJS)

fclean:
	rm -rf $(OBJS) $(NAME)

re: fclean all

.PHONY:	all clean fclean re
