//
//  Triangle.m
//  7OOP3
//
//  Created by Dmitry Aksyonov on 24.04.2022.
//

#import <Foundation/Foundation.h>

#import "Triangle.h"

#pragma mark - Triangle Private

@interface Triangle (PrivateMethods)

-(NSNumber *) height;
-(double) halfPerimeter;

@end

#pragma mark - Triangle Public

@implementation Triangle

#pragma mark Propeties

@synthesize sideA = _sideA, sideB = _sideB, sideC = _sideC;

#pragma mark Setters

-(void)setSideA:(NSNumber *)withValue
{
	_sideA = [self checkPossibleNegative:withValue];
}

-(void)setSideB:(NSNumber *)withValue
{
	_sideB = [self checkPossibleNegative:withValue];
}

-(void)setSideC:(NSNumber *)withValue
{
	_sideC = [self checkPossibleNegative:withValue];
}

-(void)setSides:(NSNumber *)sideA sideB:(NSNumber *)b sideC:(NSNumber *)c
{
	[self setSideA:sideA];
	[self setSideB:b];
	[self setSideC:c];
}

#pragma mark Getters

-(NSNumber *)sideA
{
	return _sideA;
}

-(NSNumber *)sideB
{
	return _sideB;
}

-(NSNumber *)sideC
{
	return _sideC;
}

#pragma mark Calculations

- (NSNumber *)perimeter
{
	NSNumber *perimeter = [
		NSNumber numberWithDouble:
			[_sideA doubleValue] + [_sideB doubleValue] + [_sideC doubleValue]
	];

	return perimeter;
}

- (NSNumber *)area
{
	double a = 0.5 * [_sideA doubleValue] * [[self height] doubleValue];

	return [[NSNumber alloc]initWithDouble:a];
}

@end

#pragma mark - Triangle Private IMP

@implementation Triangle (PrivateMethods)

- (NSNumber *)height
{
	double hp, ha, hb, hc, n, a, h;

	hp = [self halfPerimeter];

	ha = hp - [_sideA doubleValue];
	hb = hp - [_sideB doubleValue];
	hc = hp - [_sideC doubleValue];

	n = sqrt(hp * ha * hb * hc);
	a = [_sideA doubleValue];

	h = 2 * n / a;

	return [[NSNumber alloc]initWithDouble:h];
}

- (double)halfPerimeter
{
	return [[[NSNumber alloc] initWithDouble:[[self perimeter] doubleValue] / 2] doubleValue];
}

@end
