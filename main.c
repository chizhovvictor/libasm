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


void check_strlen()
{
	printf("-------------- ft_strlen -------------------\n");
	char *str = "lol";
	char *bad_str = NULL;
	
	printf("x = %d\n", ft_strlen(str));
	printf("y = %d\n", strlen(str));

	printf("x_er = %d\n", ft_strlen(bad_str));
	printf("y_er = %d\n", strlen(bad_str));


}

void check_read()
{
	printf("--------------- ft_read -------------------\n");
}

void check_strcpy()
{
	printf("--------------- ft_strcpy -----------------\n");
	char dst[100];
	const char *src = "Hello";

	ft_strcpy(dst, src);
	printf("ft_strcpy: %s\n", dst);
}

void check_strcmp()
{
	char *first_str = "lol";
	char *second_str = "pizdec";

	printf("ft_strcmp: %d\n", ft_strcmp(first_str, second_str));
	printf("strcmp: %d\n", strcmp(first_str, second_str));

}

void check_strdup()
{
	char *dst_1 = NULL;
	char *dst_2 = NULL;

	char *src = "Hello";
	
	dst_1 = ft_strdup(src);
	dst_2 = strdup(src);
	
	printf("ft_strdup: %s\n", dst_1);
	printf("strdup: %s\n", dst_2);

}



int main()
{
	//check_write();
	//check_strlen();
	//check_read();	
	//check_strcpy();
	//check_strcmp();
	//check_strdup();
	char *lol = ft_strdup("lol");
	printf("%s\n", lol);
	return 0;
}
