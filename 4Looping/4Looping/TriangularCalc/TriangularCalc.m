//
//  TriangularCalc.m
//  4Looping
//
//  Created by Аксёнов Дмитрий Александрович on 14.04.2022.
//

#import <Foundation/Foundation.h>

#import "TriangularCalc.h"

@implementation TriangularCalc

- (int)getTriangular:(int)number
{
	int base = 0;

	for (int i = 1; i <= number; ++i) {
		base += i;
	}

	return base;
}

- (void)triangularNumbersTable:(NSRange)fromRange
{
	NSRange range = fromRange;

	for (int i = (int) range.location; i <= NSMaxRange(range); i++)
		{
		NSLog(@"%i:\t %i", i, [self getTriangular:i]);
		}
}

- (int)getTringularFromKeyboard
{
	NSLog(@"What number is to be trianguralised?");

	int number;
	scanf("%i", &number);

	return [self getTriangular:number];
}

@end
