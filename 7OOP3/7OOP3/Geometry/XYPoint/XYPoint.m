//
//  XYPoint.m
//  7OOP3
//
//  Created by Dmitry Aksyonov on 23.04.2022.
//

#import "XYPoint.h"

#pragma mark XYPoint Public

@implementation XYPoint

@synthesize x, y;

-(void)setX:(NSNumber *)x andY:(NSNumber *)y
{
	[self setX:x];
	[self setY:y];
}

@end
