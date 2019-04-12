#include "CmakeDemo7.h"
#include "Dll1.h"
#include "UseMultip.h"
#include "SubFunc1.h"
#include "SubFunc2.h"
#include "SubFunc3.h"
   
namespace CMake7 {

bool Show(UseDll test)
{
	std::cout << "Show Info of Class: \n";
	test.Info();
	return true;
}

bool UseSubFunc1()
{
	Func1();
	return true;
}

bool UseSubFunc2()
{
	Func2();
	return true;
}

bool UseSubFunc3()
{
	Func3();
	return true;
}

UseDll::UseDll(int n1, int n2)
	: num1(n1)
	, num2(n2)
{

}

void UseDll::Mutilpy()
{
	std::cout << "UseDll Class Multip Function: \n";
	int res = FuncMultiply(num1, num2);
	std::cout << "num1: " << num1 << "num2: " << num2 << "\n";
	std::cout << "res: " << res;
	std::cout << "End UseDll Class Multip Function.\n";
}

void UseDll::ClassUseMultip()
{
	UseMultip();
}
		
void UseDll::Info()
{
	std::cout << "num1: " << num1 << "\n";
	std::cout << "num2: " << num2 << "\n";
}

};
