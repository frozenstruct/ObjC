//
//  AnotherFraction.h
//  10Categories&Protocols
//
//  Created by Dmitry Aksyonov on 16.05.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark Public

@interface AnotherFraction : NSObject

@property double numerator, denominator;

- (void)setTo:(int)n over:(int)d;
- (void)print;
- (double)convertToNum;

@end

typedef AnotherFraction Frac;

NS_ASSUME_NONNULL_END
