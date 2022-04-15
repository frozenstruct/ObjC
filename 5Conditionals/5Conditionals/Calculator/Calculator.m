//
//  SwitchCalc.m
//  5Conditionals
//
//  Created by Аксёнов Дмитрий Александрович on 15.04.2022.
//

#import <Foundation/Foundation.h>

#import "Calculator.h"

@implementation Calculator

{
	double rhs, lhs;
	char action;
}

-(void)setLhsWith:(int)value
{
	if (value > DBL_MAX)
		{
		[NSException raise:@"Double Overflow" format:@"Double cannot value greater than %f", DBL_MAX];
		lhs = DBL_MAX;
		}
	lhs = value;
}

-(void)setRhsWith:(int)value
{
	if (value > DBL_MAX)
		{
		[NSException raise:@"Double Overflow" format:@"Double cannot value greater than %f", DBL_MAX];
		rhs = DBL_MAX;
		}
	rhs = value;
}

-(void)setActionWith:(char)value
{
	switch (value) {
		case '+':
		case '-':
		case '*':
		case '/':
			action = value;
			break;
		default:
			[NSException raise:@"Invalid action string" format:@"Cannot assign empty string to action"];
	}
}

-(void)execute
{
	switch (action) {
		case '+':
			[self add];
			break;
		case '-':
			[self subtract];
			break;
		case '*':
			[self multiply];
			break;
		case '/':
			[self divide];
			break;
		default:
			break;
	}
}

-(double)add
{
	return lhs + rhs;
}

-(double)subtract
{
	return rhs - lhs;
}

-(double)multiply
{
	return rhs * lhs;
}

-(double)divide
{
	if (lhs != 0)
		{
		return lhs / rhs;
		}
	else
		{
		[NSException raise:@"Zero division" format:@"Attempt to delete lhs %f by rhs %f, which is illegal", lhs, rhs];
		return  0;;
		}
}

@end
