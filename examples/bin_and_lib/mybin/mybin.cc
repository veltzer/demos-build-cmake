#include "mylib.hh"
#include <stdlib.h> // for STATUS_SUCCESS
#include <stdio.h> // for printf(3)

int main(int argc, char** argv, char** envp) {
	printf("Hello, World!\n");
	return identity(EXIT_SUCCESS);
}
