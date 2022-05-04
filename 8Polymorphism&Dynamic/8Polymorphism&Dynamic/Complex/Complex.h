//
//  Complex.h
//  8Polymorphism&Dynamic
//
//  Created by Dmitry Aksyonov on 28.04.2022.
//

#import "Foundation/Foundation.h"

#ifndef Complex_h
#define Complex_h

@interface Complex : NSObject

@property double real, imaginary;

-(void)print;
-(void)setReal:(double)real andImaginary: (double)imaginary;
-(Complex *)add: (Complex *)cmplx;

@end

#endif /* Complex_h */
