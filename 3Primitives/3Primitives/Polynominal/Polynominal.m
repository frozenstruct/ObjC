//
//  Polynominal.m
//  3Primitives
//
//  Created by Dmitry Aksyonov on 06.04.2022.
//

#import <Foundation/Foundation.h>

#import "Polynominal.h"

@implementation Polynominal
{
	double _x;
}

-(double)polynominal: (double) x {
	_x = x;
	return (3 * [self powerOfTwo]) - 5 * ([self powerOfThree]) + 6;
}

-(double)powerOfTwo
{
	return _x * _x;
}

-(double)powerOfThree
{
	return _x * _x * _x;
}

@end
