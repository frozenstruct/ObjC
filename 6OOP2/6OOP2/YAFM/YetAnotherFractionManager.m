//
//  YetAnotherFractionManager.m
//  6OOP2
//
//  Created by Dmitry Aksyonov on 17.04.2022.
//

#import "YetAnotherFractionManager.h"
#import "../Common/localLib.h"

static long long int opCount;

#pragma mark - Fraction Manager

@implementation YetAnotherFractionManager

#pragma mark Utility Methods

-(void)print
{
	NSLog(@"numerator: %i, denominator: %i", _numerator, _denominator);
	[self incrOpCount];
}

-(double)convertToNum
{
	[self incrOpCount];
	
	if (_denominator != 0)
		return (double) _numerator / _denominator;
	else
		return NAN;
}

- (void)set:(int)numerator and:(int)denominator
{
	_numerator = numerator;
	
	if (denominator == 0)
	{
		NSLog(@"Avoiding setting denominator to zero. Assigning to 1 instead.");
		_denominator = 1;
	}
	else
	{
		_denominator = denominator;
	}
	
	[self incrOpCount];
}

-(long long int)incrOpCount
{
	opCount++;
	return opCount;
}

#pragma mark Fraction Arithmetic

-(void)add:(YetAnotherFractionManager *)f
{
	if (self.denominator == f.denominator)
	{
		self.numerator += f.numerator;
	}
	else
	{
		int m0, m1, l;
		
		l = lcm(self.denominator, f.denominator);
		
		m0 = l / self.denominator;
		m1 = l / f.denominator;
		
		self.numerator *= m0;
		f.numerator *= m1;
		
		self.numerator += f.numerator;
		self.denominator = l;
	}
	
	[self incrOpCount];
}

-(void)reduce
{
	[self incrOpCount];
	
	int d = _denominator;
	int n = _numerator;
	
	if (d > n && d % n == 0)
	{
		d /= n;
		n = 1;
		[self set:n and:d];
		return;
	}
	else
	{
		int g = gcd(d, n);
		d /= g;
		n /= g;
		[self set:n and:d];
		return;
	}
}

@end
