//
//  main.m
//  4Looping
//
//  Created by Аксёнов Дмитрий Александрович on 14.04.2022.
//

#import <Foundation/Foundation.h>

#import "TriangularCalc.h"
#import "GCDFinder.h"

int main(int argc, const char * argv[]) {

	@autoreleasepool {
		TriangularCalc *calc = [[TriangularCalc alloc]init];
		NSLog(@"%i", [calc getTriangular: 4]);

		NSRange range = NSMakeRange(4, 10);

		[calc triangularNumbersTable:range];

//		int triangularFromKeyboard = [calc getTringularFromKeyboard];
//		NSLog(@"%i", triangularFromKeyboard);

		GCDFinder *finder = [[GCDFinder alloc]init];
		[finder getDivisorsForEven:12];
		[finder getDivisorsForOdd:15];

		NSLog(@"%@",[finder greatestCommonDivisor:58 and:234]);
	}
	return 0;
}
