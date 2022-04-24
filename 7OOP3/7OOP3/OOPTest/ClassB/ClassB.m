//
//  ClassB.m
//  7OOP3
//
//  Created by Dmitry Aksyonov on 23.04.2022.
//

#import "ClassB.h"

@implementation ClassB

-(void)printVar
{
	NSLog(@"%i", x);
}

- (void)initVar:(int)value {
	x = value * 2;
}

@end
