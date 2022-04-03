//
//  Teapot.m
//  2OOP
//
//  Created by Dmitry Aksyonov on 02.04.2022.
//

#import <Foundation/Foundation.h>

#import "Teapot.h"

@implementation Teapot

{
	bool filledWithWater;
	bool washed;
}

- (instancetype)init
{
	self = [super init];

	filledWithWater = false;
	washed = true;

	return self;
}

-(void)fillWithHotWater
{
	filledWithWater = true;
	NSLog(@"Filled with water!");
}

-(void)freeWater
{
	filledWithWater = false;
	NSLog(@"Emptied water with brew!");
}

-(void)wash
{
	washed = true;
	NSLog(@"Teapot is now clean!");
}

-(void)brew
{
	if (filledWithWater && washed) {
		washed = false;
		[self freeWater];
		NSLog(@"Brewed some tea 🍵!");
	} else if (!filledWithWater) {
		NSLog(@"Please fill some water!");
	} else if (!washed) {
		NSLog(@"Whoa, seems the teapot needs to be washed prior to brewing!");
	}
}

@end
