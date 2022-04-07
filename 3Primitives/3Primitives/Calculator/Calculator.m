//
//  Calculator.m
//  3Primitives
//
//  Created by Dmitry Aksyonov on 06.04.2022.
//

#import <Foundation/Foundation.h>

#import "Calculator.h"

@implementation Calculator

// iVar

{
	double accumulator;
}

// accumulation

-(void) setAccumulator: (double) value
{
	accumulator = value;
}

-(void) clear
{
	accumulator = 0;
}

-(double) accumulator
{
	return accumulator;
}

// arithmetic

-(void) add: (double) value
{
	accumulator += value;
}

-(void) subtract: (double) value
{
	accumulator -= value;
}

-(void) multiply: (double) value
{
	accumulator *= value;
}

-(void) divide: (double) value
{
	accumulator /= value;
}

@end
