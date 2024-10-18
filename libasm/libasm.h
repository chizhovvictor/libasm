#ifndef	LIBASM_H
#define LIBASM_H

#include <unistd.h>
#include <stdio.h>
#include <errno.h>

ssize_t ft_write(int fd, const void *buf, size_t count);
size_t ft_strlen(const char *s);
ssize_t ft_read(int fd, void *buf, size_t count);
char *stpcpy(char *restrict dst, const char *restrict src);

#endif
