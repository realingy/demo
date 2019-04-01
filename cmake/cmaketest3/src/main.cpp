#include <stdio.h>
#include <stdlib.h>
#include "MathDll.h"

int main(int argc, char *argv[])
{
	double base = 12.5;
	int exponent = 8;
	double result = power(base, exponent);
	printf("%g ^ %d is %g\n", base, exponent, result);
	return 0;
}
