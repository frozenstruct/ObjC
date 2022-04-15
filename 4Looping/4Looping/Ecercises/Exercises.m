//
//  functionsIMP.m
//  obxc looping exercises
//
//  Created by Dmitry Aksyonov on 14.04.2022.
//

#import <Foundation/Foundation.h>

#import "Exercises.h"

@implementation Exercises

-(void)generateSquaresTable
{
	NSLog(@"Base  | Squared");
	NSLog(@"_____ | _______");

	for (int i = 1; i <= 10; i++)
	{
		NSLog(@"%i     | %i     ", i, i * i);
	}
	NSLog(@"_____ | _______");
}

-(int)getTriuangularByFormula:(int)number
{
	return number * (number + 1) / 2;
}

-(void)getFirstTenFactorials
{
	int i = 10;

	while (i != 0)
	{
		int factorial = i;

		for (int j = i - 1; j != 0; j--)
		{
			factorial *= j;
		}

		NSLog(@"Factorial for %i is %i", i, factorial);

		i--;
	}
}

-(int)getSumOfDidgits:(int)number
{
	int _number = number;
	int sum = 0;

	do {
		sum += _number % 10;
		_number /= 10;
	} while (_number != 0);

	return  sum;
}

@end
