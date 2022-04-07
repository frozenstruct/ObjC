//
//  ExpressionSolver.m
//  3Primitives
//
//  Created by Dmitry Aksyonov on 07.04.2022.
//

#import <Foundation/Foundation.h>

#import "ExpressionSolver.h"

@implementation ExpressionSolver

-(double)getTenPoweredBy: (int) value
{
	double dividend = 1;
	int exponentedValue = 10;
	int exponent = abs(value);

	for (int i = 0; i < exponent - 1; i++)
	{
		exponentedValue *= 10;
	}

	double result = dividend / (double) exponentedValue;
	return result;
}

@end
