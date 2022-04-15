//
//  OddEven.m
//  5Conditionals
//
//  Created by Аксёнов Дмитрий Александрович on 15.04.2022.
//

#import <Foundation/Foundation.h>

#import "OddEven.h"

@implementation OddEven

-(void)checkOddOrEven:(int)number
{
	int remainder = number % 2;

	if (remainder != 0)
		{
		NSLog(@"The number %i is odd", number);
		}
	else
		{
		NSLog(@"The number %i is even", number);
		}
}

@end
