SRCS =	./ft_write.s ./ft_strlen.s ./ft_read.s ./ft_strcpy.s ./ft_strcmp.s ./ft_strdup.s

OBJS = $(SRCS:.s=.o)

FLAGS = -f elf64

NAME = libasm.a

all: $(NAME)

AS = nasm

%.o : %.s 
	$(AS) $(FLAGS) $< -o $@

$(NAME) : $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	rm -rf $(OBJS)

fclean:
	rm -rf $(OBJS) $(NAME)

re: fclean all

.PHONY:	all clean fclean re
