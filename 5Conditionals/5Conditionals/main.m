//
//  main.m
//  5Conditionals
//
//  Created by Аксёнов Дмитрий Александрович on 15.04.2022.
//

#import <Foundation/Foundation.h>

#import "AbsoluteNumber/AbsoluteNumber.h"
#import "AnotherFraction/AnotherFraction.h"
#import "OddEven/OddEven.h"
#import "LeapYear/LeapYear.h"
#import "Calculator/Calculator.h"
#import "PrimeGen/PrimeGen.h"
#import "IntDivisor/IntDivisor.h"
#import "DigitsMapper/DigitsMapper.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		// insert code here...
		NSLog(@"Hello, World!");

		AbsoluteNumber *absolute = [[AbsoluteNumber alloc]init];
		NSLog(@"%i", [absolute getAbsoluteNumber:-666]);
		NSLog(@"%i", [absolute getAbsoluteNumber:666]);
		NSLog(@"%i", [absolute getAbsoluteNumber:0]);

		AnotherFraction *fraction = [[AnotherFraction alloc]init];
		[fraction setNumerator:44.0];
		[fraction setDenominator:5.0];
		NSLog(@"%f", [fraction getFractionValueAsDouble]);
		[fraction setDenominator:0];
		[fraction setDenominator:1];
		NSLog(@"%f", [fraction getFractionValueAsDouble]);

		OddEven *oddEven = [[OddEven alloc]init];
		[oddEven checkOddOrEven:2];
		[oddEven checkOddOrEven:3];
		[oddEven checkOddOrEven:0];
		[oddEven checkOddOrEven:-2];
		[oddEven checkOddOrEven:-3];

		LeapYear *isLeap = [[LeapYear alloc]init];
		NSLog(@"%d", [isLeap isLeap:1928]);

		Calculator *calc = [[Calculator alloc]init];
		[calc setRhsWith:5];
		[calc setLhsWith:1];
		[calc setActionWith:'/'];
		[calc execute];

		PrimeGen *prime = [[PrimeGen alloc]init];
		[prime generatePrimesTableUpTo:100000];

		IntDivisor *divisor = [[IntDivisor alloc]init];
		[divisor isEvenlyDivided:4 :3];

		DigitsMapper *mapper = [[DigitsMapper alloc]init];
		[mapper mapDigitsToSpellOut:1992];
		[mapper mapDigitsToSpellOut:-1];
		[mapper mapDigitsToSpellOut:-1234525];

	}
	return 0;
}
