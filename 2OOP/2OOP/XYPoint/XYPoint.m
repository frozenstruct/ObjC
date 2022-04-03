//
//  XYPoint.m
//  2OOP
//
//  Created by Dmitry Aksyonov on 03.04.2022.
//

#import <Foundation/Foundation.h>

#import "XYPoint.h"

@implementation XYPoint

{
	int x;
	int y;
}

-(void)setX: (int) 	xCoordinate {
	x = xCoordinate;
}

-(void)setY: (int) yCoordinate {
	y = yCoordinate;
}

-(void)getX {
	NSLog(@"Point x, %i", x);
}

-(void)getY {
	NSLog(@"Point x, %i", y);
}

@end
