//
//  Circle.m
//  7OOP3
//
//  Created by Dmitry Aksyonov on 24.04.2022.
//

#import "Circle.h"

@implementation Circle

#pragma mark Setters / Getters

- (NSNumber *)getRadius
{
	if (!_radius)
	{
		return @0;
	}

	return _radius;
}

-(void)setRadius:(NSNumber *)value
{
	_radius = [self checkPossibleNegative:value];
}

#pragma mark Calculations	

-(NSNumber *)diameter
{
	NSNumber *diameter = [NSNumber numberWithDouble: [[self radius] doubleValue] * 2];
	return diameter;
}

-(NSNumber *)circumference
{
	NSNumber *piDoubled = [NSNumber numberWithDouble:M_PI * 2];
	NSNumber *circumference = [NSNumber numberWithDouble: [piDoubled doubleValue] * [[self radius] doubleValue]];
	return circumference;
}

-(NSNumber *)area
{
	NSNumber *pi = [NSNumber numberWithDouble:M_PI];
	NSNumber *rSquared = [NSNumber numberWithDouble: [[self radius] doubleValue] * [[self radius] doubleValue]];
	NSNumber *area = [NSNumber numberWithDouble: [pi doubleValue] * [rSquared doubleValue]];

	return area;
}

@end
