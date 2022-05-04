//
//  Complex.m
//  8Polymorphism&Dynamic
//
//  Created by Dmitry Aksyonov on 28.04.2022.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void)print
{
	NSLog(@"Cmplx + imgnry: %f + %f", real, imaginary);
}

-(void)setReal:(double)real andImaginary: (double)imaginary
{
	self.real = real;
	self.imaginary = imaginary;
}

-(Complex *)add: (Complex *)cmplx
{
	Complex *res = [[Complex alloc]init];
	res.real = self.real + cmplx.real;
	res.imaginary = self.imaginary + cmplx.imaginary;

	return res;
}

@end
