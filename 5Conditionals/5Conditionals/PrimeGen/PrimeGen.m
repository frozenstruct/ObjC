//
//  PrimeGen.m
//  5Conditionals
//
//  Created by Аксёнов Дмитрий Александрович on 16.04.2022.
//

#import <Foundation/Foundation.h>

#import "PrimeGen.h"

@implementation PrimeGen

/// Complexity: O(n^2)
-(void)generatePrimesTableUpTo:(int)number
{
	int p;
	int d;
	BOOL isPrime;

	/// Starting at 2 as 1 is not prime, terminating at n == input number
	for (p = 2; p <= number; p++)
		{
		isPrime = YES;

		/// Checking even divisions for all integers that are not 1 or != number
		for (d = 2; d < p; d++)
			{

			/// If any divides evenly - it is not prime
			if (p % d == 0)
				{
				isPrime = NO;
				break;
				}
			}

		if (isPrime)
			{
			NSLog(@"%i", p);
			}
		}
}

@end
