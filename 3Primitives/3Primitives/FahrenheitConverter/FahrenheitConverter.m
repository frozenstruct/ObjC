//
//  FahrenheitConverter.m
//  3Primitives
//
//  Created by Dmitry Aksyonov on 06.04.2022.
//

#import <Foundation/Foundation.h>

#import "FahrenheitConverter.h"

@implementation FahrenheitConverter

{
	double celciusValue;
}

-(void) setCelcius: (double) value
{
	celciusValue = value;
}

-(double) convertToFahrenheit
{
	double conversionResult = (celciusValue * 9 / 5) + 32;
	return conversionResult;
}


@end
