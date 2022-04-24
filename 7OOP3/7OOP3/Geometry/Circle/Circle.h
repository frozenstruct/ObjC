//
//  Circle.h
//  7OOP3
//
//  Created by Dmitry Aksyonov on 24.04.2022.
//

#import "../GeometricShape/GeometricShape.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : GeometricShape

@property (nonatomic) NSNumber *radius;

-(void)setRadius:(NSNumber *)value;
-(NSNumber *)getRadius;

-(NSNumber *)diameter;
-(NSNumber *)circumference;
-(NSNumber *)area;

@end

NS_ASSUME_NONNULL_END
