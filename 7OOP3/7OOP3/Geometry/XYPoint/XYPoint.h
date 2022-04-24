//
//  XYPoint.h
//  7OOP3
//
//  Created by Dmitry Aksyonov on 23.04.2022.
//

#import <Foundation/Foundation.h>

#import "../GeometricShape/GeometricShape.h"

NS_ASSUME_NONNULL_BEGIN

#pragma mark XYPoint Public

@interface XYPoint : GeometricShape

@property NSNumber *x, *y;

-(void)setX:(NSNumber *)x andY:(NSNumber *)y;

@end

NS_ASSUME_NONNULL_END
