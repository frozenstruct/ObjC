//
//  localLib.c
//  6OOP2
//
//  Created by Dmitry Aksyonov on 17.04.2022.
//

#include "localLib.h"
#include <stdbool.h>

int lcm(int a, int b)
{
	return a / gcd(a, b) * b;
}

int gcd(int a, int b)
{
	while (b != 0)
	{
		a %= b;
		a ^= b;
		b ^= a;
		a ^= b;
	}

	return a;
}
