//
//  main.m
//  2OOP
//
//  Created by Dmitry Aksyonov on 01.04.2022.
//

#import <Foundation/Foundation.h>

#import "Fraction/FractionManager.h"
#import "Teapot/Teapot.h"
#import "XYPoint/XYPoint.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {

#pragma mark Fracitions

		FractionManager *fractionManager = [[FractionManager alloc] init];

		[fractionManager setNumerator: 1];
		[fractionManager setDenominator: 3];

		NSLog(@"result is:");
		[fractionManager print];

#pragma mark Teapot

		Teapot *teapot = [[Teapot alloc] init];

		[teapot brew]; // no water
		[teapot fillWithHotWater];
		[teapot brew];

		[teapot brew];

		[teapot wash]; // it is dirty, wash it
		[teapot brew]; // it has no water, fill it

		[teapot fillWithHotWater];
		[teapot brew];

#pragma mark XYPoint

		XYPoint *point = [[XYPoint alloc] init];

		[point setX: 5];
		[point setY: 4];

		[point getX];
		[point getY];

	}
	return 0;
}
