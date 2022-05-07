#include <stdio.h>

int count = 0;

void callCount(){
	count++;
	printf("current execution number %d\n", count);
}
