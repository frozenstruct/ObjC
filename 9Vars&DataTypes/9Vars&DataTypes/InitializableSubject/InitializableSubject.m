//
//  InitializableSubject.m
//  9Vars&DataTypes
//
//  Created by Dmitry Aksyonov on 30.04.2022.
//

#import "InitializableSubject.h"

@implementation InitializableSubject

@synthesize value0, value1;

- (instancetype)initWithValue0:(int)value0 and:(int)value1
{
	self = [super init];
	
	if (self) {
		[self setValues:value0 and:value1];
	}
	
	return self;
}

- (void)setValues:(int)value0 and:(int)value1
{
	self.value0 = value0;
	self.value1 = value1;
}

- (void)print
{
	NSLog(@"Object values are: %i, %i", value0, value1);
}

@end
