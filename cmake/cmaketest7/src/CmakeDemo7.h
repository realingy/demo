#ifndef __CMAKE_DEMO_H__
#define __CMAKE_DEMO_H__

#include "CmakeDemoDef.h"

namespace CMake7
{
    class UseDll;
    bool Show(UseDll test);
    bool UseSubFunc1();
    bool UseSubFunc2();
    bool UseSubFunc3();

    class UseDll
	{
	public:
		UseDll(int n1, int n2);
		void Mutilpy();
		void ClassUseMultip();
		void Info();
	private:
		int num1;
		int num2;
    };
};

#endif //__CMAKE_DEMO_H__
