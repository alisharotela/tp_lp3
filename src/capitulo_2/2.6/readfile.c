#include<fcntl.h>
#include<stdlib.h>
#include<sys/stat.h>
#include<sys/types.h>
#include<unistd.h>
#include<string.h>
#include<stdio.h>

char* read_from_file (const char* filename, size_t length);

int main(int argc, char *argv[])
{
	char *c;
 	char *p;
 	long tam = strtol(argv[2], &p, 10);
  	c = read_from_file(argv[1],tam);
  	printf("%s\n", c);
  	return 0;
}

char* read_from_file (const char* filename, size_t length){
	char* buffer;
	int fd;
	ssize_t bytes_read;
	/* Allocate the buffer. */
	buffer = (char*) malloc (length);
	if (buffer == NULL)
	return NULL;
	/* Open the file. */
	fd = open (filename, O_RDONLY);
	if (fd == -1) {
	/* open failed. Deallocate buffer before returning. */
		free (buffer);
		return NULL;
	}
	/* Read the data. */
	bytes_read = read (fd, buffer, length);
	if (bytes_read != length) {
	/* read failed. Deallocate buffer and close fd before returning.*/
		free (buffer);
		close (fd);
		return NULL;
	}
	/* Everything’s fine. Close the file and return the buffer. */
	close (fd);
	return buffer;
	
}
