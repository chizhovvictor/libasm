#include "./header.h"
#include <unistd.h>

void check_write()
{
	printf("---------------- ft_write ------------------\n");
	int x = ft_write(1, NULL, 1);
	int y = write(1, NULL, 1);
	
	int x_er = ft_write(6, "lolsdfsfdsfsdf\n", 10);
	int y_er = write(3, "lol\n", 4);

	//printf("x %d\ny %d\n", x_er, y_er);

	printf("\nx = %d errno = %d\n", x, errno);
	printf("y = %d errno = %d\n", y, errno);
	printf("x_er = %d errno = %d\n", x_er, errno);
	printf("y_er = %d errno = %d\n", y_er, errno);

}



int main()
{
	check_write();	
	return 0;
}
