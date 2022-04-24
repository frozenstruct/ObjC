//
//  Rectangle.h
//  7OOP3
//
//  Created by Dmitry Aksyonov on 23.04.2022.
//

#import <Foundation/Foundation.h>

#import "XYPoint.h"
#import "../GeometricShape/GeometricShape.h"
#import "Point.h"

NS_ASSUME_NONNULL_BEGIN

#pragma mark Rectangle Public

@interface Rectangle : GeometricShape

#pragma mark Properties

@property NSNumber *width, *height;
@property (readonly) struct point topLeft, bottomLeft;
@property (readonly) struct point topRight, bottomRight;
@property (readonly) NSString *rectDescription;

#pragma mark Initialization

-(id)initZeroed;
-(id)initFromTopLeft:(struct point)lPoint andBottomRight:(struct point)rPoint;

#pragma mark Setters / Getters

-(void)setWidth:(NSNumber *)width andHeight:(NSNumber *) height;
-(void)setOrigin:(XYPoint *)pt;
-(XYPoint *)origin;

#pragma mark Methods

-(NSNumber *)area;
-(NSNumber *)perimeter;
-(Rectangle *)intersectWith:(Rectangle *)rect;
-(void)draw;


@end

NS_ASSUME_NONNULL_END
