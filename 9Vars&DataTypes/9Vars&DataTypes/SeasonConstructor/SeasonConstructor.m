//
//  SeasonConstructor.m
//  9Vars&DataTypes
//
//  Created by Dmitry Aksyonov on 01.05.2022.
//

#import "SeasonConstructor.h"

@implementation SeasonConstructor

+ (Season)getSeasonFor:(enum month)month
{
	switch (month) {
		case december:
		case january:
		case february:
			return winter;
			break;
		case march:
		case april:
		case may:
			return spring;
			break;
		case june:
		case july:
		case august:
			return summer;
			break;
		case september:
		case october:
		case november:
			return winter;
			break;
	}
}

@end
