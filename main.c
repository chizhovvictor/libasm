#include "./header.h"
#include <unistd.h>

void check_write()
{
	printf("---------------- ft_write ------------------\n");
	int x = ft_write(1, "lol\n", 4);
	int y = write(1, "lol\n", 4);
	
	int x_er = ft_write(6, "lolsdfsfdsfsdf\n", 10);
	int y_er = write(3, "lol\n", 4);

	//printf("x %d\ny %d\n", x_er, y_er);

	printf("\nx = %d\ny = %d\nx_er = %d\ny_er = %d\n", x, y, x_er, y_er);

}



int main()
{
	check_write();	
	return 0;
}
