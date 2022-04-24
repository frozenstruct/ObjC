//
//  Triangle.h
//  7OOP3
//
//  Created by Dmitry Aksyonov on 24.04.2022.
//

#import <Foundation/Foundation.h>

#import "../GeometricShape/GeometricShape.h"

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Triangle

@interface Triangle : GeometricShape

#pragma mark Properties

@property NSNumber *sideA, *sideB, *sideC;

#pragma mark Setters

-(void)setSideA:(NSNumber *)withValue;
-(void)setSideB:(NSNumber *)withValue;
-(void)setSideC:(NSNumber *)withValue;

-(void)setSides:(NSNumber *)sideA sideB:(NSNumber *)b sideC:(NSNumber *)c;

#pragma mark Getters

-(NSNumber *)sideA;
-(NSNumber *)sideB;
-(NSNumber *)sideC;

#pragma mark Calculations

-(NSNumber *)perimeter;
-(NSNumber *)area;

@end

NS_ASSUME_NONNULL_END
