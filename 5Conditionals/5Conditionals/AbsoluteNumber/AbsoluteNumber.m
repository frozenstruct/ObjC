//
//  AbsoluteNumber.m
//  5Conditionals
//
//  Created by Аксёнов Дмитрий Александрович on 15.04.2022.
//

#import <Foundation/Foundation.h>

#import "AbsoluteNumber.h"

@implementation AbsoluteNumber

- (int)getAbsoluteNumber:(int)number
{
	if (number == 0)
		{
		return 0;
		}
	else if (number > 0)
		{
		return number;
		}

	int absoluteNumber = abs(number);
	return absoluteNumber;
}

@end
