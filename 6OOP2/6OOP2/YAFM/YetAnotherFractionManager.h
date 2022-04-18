//
//  YetAnotherFractionManager.h
//  6OOP2
//
//  Created by Dmitry Aksyonov on 17.04.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YetAnotherFractionManager : NSObject

@property int numerator, denominator;

-(void)print;
-(double)convertToNum;
-(long long int)incrOpCount;

-(void)set:(int)numerator and:(int)denominator;
-(void)add:(YetAnotherFractionManager *)f;
-(void)reduce;

@end

NS_ASSUME_NONNULL_END
