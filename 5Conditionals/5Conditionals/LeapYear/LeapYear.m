//
//  LeapYear.m
//  5Conditionals
//
//  Created by Аксёнов Дмитрий Александрович on 15.04.2022.
//

#import <Foundation/Foundation.h>

#import "LeapYear.h"

@implementation LeapYear

-(BOOL)isLeap:(int)year
{

	int rem4 = year % 4;
	int rem100 = year % 100;
	int rem400 = year % 400;

	if (rem4 != 0)
		{
		return false;
		}
	else if (rem100 != 0 && (rem100 == 0 || rem400 == 0))
		{
		return true;
		}
	else
		{
		return false;
		}
}

@end


