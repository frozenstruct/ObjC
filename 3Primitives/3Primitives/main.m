//
//  main.m
//  3Primitives
//
//  Created by Dmitry Aksyonov on 03.04.2022.
//

#import <Foundation/Foundation.h>

#import "Calculator/Calculator.h"
#import "FahrenheitConverter/FahrenheitConverter.h"
#import "Polynominal/Polynominal.h"
#import "ExpressionSolver/ExpressionSolver.h"
#import "Rectangle/Rectangle.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {

		int intValue = 100;
		float floatValue = 331.79;
		double doubleValue = 4.55e+11;
		char charValue = 'C';

		NSLog(@"Int value: %i ", intValue);
		NSLog(@"Char value: %c ", charValue);
		NSLog(@"Float value: %f ", floatValue);
		NSLog(@"Double value: %g ", doubleValue);
		NSLog(@"Double value with sci-notation: %e ", doubleValue);

		Calculator *calculator = [[Calculator alloc] init];
		[calculator setAccumulator: 2.0];
		[calculator add: 3];
		[calculator subtract: 7];
		[calculator multiply: -2];
		[calculator divide: 2];
		NSLog(@"Clalculation result is %f", [calculator accumulator]);

		FahrenheitConverter *tempConverter = [[FahrenheitConverter alloc] init];
		[tempConverter setCelcius: 15.0];
		double convertedTemp = [tempConverter convertToFahrenheit];
		NSLog(@"%f Celcius is %f Fahrenheit", 15.0, convertedTemp);

		Polynominal *polynominal = [[Polynominal alloc] init];
		double poly = [polynominal polynominal: 2.55];
		NSLog(@"polynominal: %f", poly);

		ExpressionSolver *solver = [[ExpressionSolver alloc] init];
		double tenExpByNeg8 = [solver getTenPoweredBy: -8];
		double tenExpByNeg7 = [solver getTenPoweredBy: -7];
		double tenExpByNeg6 = [solver getTenPoweredBy: -6];

		NSLog(
			  @"(3.31 x 10-8 + 2.01 x 10-7) / (7.16 x 10-6 + 2.01 x 10-8) is: %e",
			  (3.31 * tenExpByNeg8 + 2.01 * tenExpByNeg7) / (7.16 * tenExpByNeg6 + 2.01 * tenExpByNeg8)
			  );

		Rectangle *rect = [[Rectangle alloc] init];
		[rect setWidth: 5];
		[rect setHeight: 4];

		NSLog(@"rect area is: %i", [rect area]);
		NSLog(@"rect perimeter is: %i", [rect perimeter]);
	}
	return 0;
}
