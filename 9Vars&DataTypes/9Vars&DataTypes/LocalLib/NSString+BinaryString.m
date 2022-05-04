//
//  NSString+BinaryString.m
//  9Vars&DataTypes
//
//  Created by Аксёнов Дмитрий Александрович on 04.05.2022.
//

#import <Foundation/Foundation.h>

@implementation NSString (BinaryString)

+ (NSString *)toBinary:(int)input
{
	if (input == 1 || input == 0) {
		return [NSString stringWithFormat:@"%d", input];
	}
	else {
		return [NSString stringWithFormat:@"%@%d", [self toBinary:input / 2], input % 2];
	}
}

@end
