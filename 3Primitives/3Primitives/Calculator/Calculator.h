//
//  Calculator.h
//  3Primitives
//
//  Created by Dmitry Aksyonov on 06.04.2022.
//

#ifndef Calculator_h
#define Calculator_h

@interface Calculator : NSObject

// accumulation

-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// arithmetic

-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

@end

#endif /* Calculator_h */
