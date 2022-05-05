//
//  main.m
//  10Categories&Protocols
//
//  Created by Аксёнов Дмитрий Александрович on 05.05.2022.
//

#import <Foundation/Foundation.h>
#import "AnotherFraction/AnotherFraction+MathOps.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
	    // insert code here...
	    NSLog(@"Hello, World!");

		Frac *f0 = [[Frac alloc]init];
		Frac *f1 = [[Frac alloc]init];

		// methods are available

		[f0 add:f1];
		[f0 sub:f1];
		[f0 mul:f1];
		[f0 div:f1];

		// reduce cannot be called here
		/**
		 No visible @interface for 'Frac' (aka 'AnotherFraction')
		 declares the selector 'reduce'
		 */
		[f0 reduce];
	}
	return 0;
}
