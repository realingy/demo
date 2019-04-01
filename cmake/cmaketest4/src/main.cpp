#include <stdio.h>
#include "config.h"

#ifdef USE_MYMATH
  #include "test.h"
#else
  #include <math.h>
#endif

int main()
{
    double base = 12.5;
    int exponent = 8;
    
#ifdef USE_MYMATH
    printf("Now we use our own Math library. \n");
    double result = power(base, exponent);
#else
    printf("Now we use the standard library. \n");
    double result = pow(base, exponent);
#endif
    printf("%g ^ %d is %g\n", base, exponent, result);
    return 0;
}