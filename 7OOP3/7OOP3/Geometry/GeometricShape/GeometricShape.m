//
//  GeometricShape.m
//  7OOP3
//
//  Created by Аксёнов Дмитрий Александрович on 26.04.2022.
//

#import "GeometricShape.h"

@implementation GeometricShape

-(NSNumber *)checkPossibleNegative:(NSNumber *)value
{
	return [NSNumber numberWithDouble:fabs([value doubleValue])];
}

@end
