//
//  AnotherFraction.m
//  10Categories&Protocols
//
//  Created by Dmitry Aksyonov on 16.05.2022.
//

#import "AnotherFraction.h"

#pragma mark Private

@interface AnotherFraction ()

- (void)reduce;

@end

#pragma mark Public

@implementation AnotherFraction

- (void)setTo:(int)n over:(int)d
{
	self.numerator = n;
	self.denominator = d;
}

- (void)print
{
	NSLog(@"%f/%f", _numerator, _denominator);
}

- (double)convertToNum
{
	return _numerator / _denominator;
}

/// private methods can be defined along with others in a single
/// implementation

- (void)reduce
{
	// some imp here
}

@end
