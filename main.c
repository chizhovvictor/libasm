#include "./header.h"
#include <unistd.h>

int main()
{
	printf("------------ ft_write ---------------\n");
	printf("ft_write %d\n", ft_write(3, "Hello World!\n", 13));
	printf("write %d\n", write(3, "Hello World!\n", 13));

	return 0;
}
