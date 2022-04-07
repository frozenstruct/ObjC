//
//  Rectangle.m
//  3Primitives
//
//  Created by Dmitry Aksyonov on 07.04.2022.
//

#import <Foundation/Foundation.h>

#import "Rectangle.h"

@implementation Rectangle

{
	int width;
	int height;
}

// set

-(void) setWidth: (int) w
{
	width = w;
}

-(void) setHeight: (int) h
{
	height = h;
}

// get

-(int) width
{
	return width;
}

-(int) height
{
	return height;
}

// calc

-(int) area
{
	return width * height;
}

-(int) perimeter
{
	return width * 2 + height * 2;
}

@end
