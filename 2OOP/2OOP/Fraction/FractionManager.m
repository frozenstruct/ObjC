//
//  Fraction.m
//  2OOP
//
//  Created by Dmitry Aksyonov on 02.04.2022.
//

#import <Foundation/Foundation.h>

#import "FractionManager.h"

@implementation FractionManager

/// Instance variables
{
	int numerator;
	int denominator;
}

- (int)numerator
{
	return  numerator;
}

- (int)denominator
{
	return  denominator;
}

-(void)print
{
	NSLog(@"numerator is %i, denominator is %i", numerator, denominator);
}

-(void)setNumerator: (int) n
{
	numerator = n;
}

-(void)setDenominator: (int) d
{
	denominator = d;
}

@end
