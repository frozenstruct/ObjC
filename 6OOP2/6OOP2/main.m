//
//  main.m
//  6OOP2
//
//  Created by Dmitry Aksyonov on 17.04.2022.
//

#import <Foundation/Foundation.h>

#import "YAFM/YetAnotherFractionManager.h"
#import "localLib.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
	    // insert code here...
	    NSLog(@"Hello, World!");

		YetAnotherFractionManager *yafm = [[YetAnotherFractionManager alloc]init];
		[yafm setNumerator:60];
		[yafm setDenominator:15];
		double r0 = [yafm convertToNum];
		NSLog(@"%f", r0);

		yafm.numerator = 14;
		yafm.denominator = 7;
		double r1 = yafm.convertToNum; // this is not conventionally correct
		r1 = [yafm convertToNum]; // this is conventionally correct
		NSLog(@"%f", r1);

		[yafm set:27 and:3];
		double r2 = [yafm convertToNum];
		NSLog(@"%f", r2);

		int _lcm = lcm(25, 9);
		NSLog(@"%i",_lcm);

		YetAnotherFractionManager *f0 = [[YetAnotherFractionManager alloc]init];
		YetAnotherFractionManager *f1 = [[YetAnotherFractionManager alloc]init];
		[f0 set:2 and:4];
		[f1 set:3 and:3];
		[f0 add:f1];
		NSLog(@"%i / %i", f0.numerator, f0.denominator);

		[f0 set:5 and:8];
		[f1 set:8 and:14];
		[f0 add:f1];
		NSLog(@"%i / %i", f0.numerator, f0.denominator);

		[f0 set:4 and:8];
		[f0 reduce];
		[f0 print];

		[f0 set:9 and:6];
		[f0 reduce];
		[f0 print];

		[f0 set:6 and:9];
		[f0 reduce];
		[f0 print];

		long long int c = [f0 incrOpCount];
		NSLog(@"%lli", c);
	}
	return 0;
}
