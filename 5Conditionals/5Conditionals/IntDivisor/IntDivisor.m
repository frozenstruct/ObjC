//
//  IntDivisor.m
//  5Conditionals
//
//  Created by Аксёнов Дмитрий Александрович on 16.04.2022.
//

#import <Foundation/Foundation.h>

#import "IntDivisor.h"

@implementation IntDivisor

-(void)isEvenlyDivided:(int)numerator :(int)denominator
{
	if (denominator == 0)
		{
		[NSException raise:@"Zero division." format:@"Cannot divide by zero."];
		return;
		}

	int result = numerator % denominator;

	switch (result) {
		case 0:
			NSLog(@"%i is evenly divisible by %i", numerator, denominator);
			break;
		default:
			NSLog(@"%i is NOT evenly divisible by %i", numerator, denominator);
			break;
	}
}

@end
