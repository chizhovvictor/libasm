#ifndef	LIBASM_H
#define LIBASM_H

#include <unistd.h>
#include <stdio.h>
#include <errno.h>

ssize_t ft_write(int fd, const void *buf, size_t count);
size_t ft_strlen(const char *s);

#endif
