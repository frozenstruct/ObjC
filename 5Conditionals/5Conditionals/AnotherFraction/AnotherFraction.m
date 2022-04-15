//
//  AnotherFraction.m
//  5Conditionals
//
//  Created by Аксёнов Дмитрий Александрович on 15.04.2022.
//

#import <Foundation/Foundation.h>

#import "AnotherFraction.h"

@implementation AnotherFraction
{
	double numerator;
	double denominator;
}

-(double)getFractionValueAsDouble
{
	if (denominator != 0)
		{
		return numerator / denominator;
		}
	else if (denominator == 1)
		{
		return numerator;
		}
	else
		{
		return NAN;
		}
}

-(void)setNumerator:(double)value
{
	numerator = value;
}

-(void)setDenominator:(double)value
{
	denominator = value;
}

@end
