//
//  WeekendDetector.m
//  9Vars&DataTypes
//
//  Created by Аксёнов Дмитрий Александрович on 04.05.2022.
//

#import "WeekendDetector.h"

@implementation WeekendDetector

- (BOOL)checkWeekendFor:(Day)day
{
	switch (day) {
		case sat:
		case sun:
			return true;
			break;
		default:
			return false;
			break;
	}
}

@end
