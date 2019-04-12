#include <iostream>

#include "Dll1.h"

int UseMultip() {
	int x, y;
	std::cin >> x;
	std::cin >> y;
	std::cout << "Result Of Function Multiply(" << x << ", " << y << ") = " << FuncMultiply(x, y) << std::endl;
 	return 0;
}