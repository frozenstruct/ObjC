//
//  GCDFinder.m
//  4Looping
//
//  Created by Аксёнов Дмитрий Александрович on 14.04.2022.
//

#import <Foundation/Foundation.h>

#import "GCDFinder.h"

@implementation GCDFinder

- (NSNumber *)greatestCommonDivisor:(int)firstValue and:(int)secondValue {

	if (secondValue == 0 || secondValue == 0) {
		NSLog(@"Cannot find GCD for zero numbers.");
		return [NSNumber numberWithInt:0];
	}

	NSSet *firstValueDivisors;
	NSSet *secondValueDivisors;

	if (firstValue % 2 == 0)
		{
		firstValueDivisors = [NSSet setWithArray:[self getDivisorsForEven:firstValue]];
		}
	else
		{
		firstValueDivisors = [NSSet setWithArray:[self getDivisorsForOdd:firstValue]];
		}

	if (secondValue % 2 == 0)
		{
		secondValueDivisors = [NSSet setWithArray:[self getDivisorsForEven:secondValue]];
		}
	else
		{
		secondValueDivisors = [NSSet setWithArray:[self getDivisorsForOdd:secondValue]];
		}

	NSMutableSet * intersectedSet;

	if (firstValueDivisors.count < secondValueDivisors.count)
		{
		intersectedSet = [NSMutableSet setWithSet: firstValueDivisors];
		[intersectedSet intersectSet:secondValueDivisors];
		}
	else
		{
		intersectedSet = [NSMutableSet setWithSet: secondValueDivisors];
		[intersectedSet intersectSet:firstValueDivisors];
		}

	NSArray *outputArray = (NSArray *) intersectedSet;

	return [outputArray valueForKeyPath:@"@max.intValue"];
}

- (NSMutableArray *)getDivisorsForOdd:(int)odd {
	NSMutableArray *divisorsArray = [NSMutableArray array];

	int divisor = 1;

	while (divisor <= odd) {
		if (odd % divisor == 0)
			{
			NSNumber *number = [NSNumber numberWithInt:divisor];
			[divisorsArray addObject:number];
			}
		divisor++;
	}

	return divisorsArray;
}

- (NSMutableArray *)getDivisorsForEven:(int)even {
	NSMutableArray *divisorsArray = [NSMutableArray array];

	int divisor = 1;

	while (divisor <= even) {
		if (even % divisor == 0)
			{
			NSNumber *number = [NSNumber numberWithInt:divisor];
			[divisorsArray addObject:number];
			}
		divisor++;
	}

	return divisorsArray;
}

- (BOOL)checkOddOrEven:(int)number {
	return number % 2 == 0;
}

@end
