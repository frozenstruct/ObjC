//
//  main.m
//  1HelloWorld
//
//  Created by Dmitry Aksyonov on 01.04.2022.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

	@autoreleasepool {

		/**
		 - with @  this is NSString
		 - wiithout @ this is a C stiring
		 */
		NSLog(@"Now I am learning ObjC");
		NSLog(@"Let's start with the beginner's mind.");
		NSLog(@"\n..This\n...is\n....newline\n.....output.");

		// Declarations can be separated by one line
		int sum0;

		sum0 = 5 + 2;

		NSLog(@"The sum of 5 and 2 is %i", sum0);

		// Can be declared in one line if one type
		int value0, value1, sum1;

		value0 = 25;
		value1 = 30;
		sum1 = value0 + value1;

		NSLog(@"The sum of %i and %i is %i", value0, value1, sum1);

		NSLog(
			  @"\nIn ObjC, lowercase letters are significant.\nmain is where program begins.\nOpen and closed braces enclose program routines.\nAll statements should be separated by semicolons."
			  );

		int i;

		i = 1;
		NSLog(@"Testing...");
		NSLog(@"....%i", i);
		NSLog(@"...%i", i + 1);
		NSLog(@"..%i", i + 2);

		int c = 87;
		int d = 15;
		int result = c - d;
		NSLog(@"The result of subtracting %i from %i is %i", c, d , result);
	}
	return 0;
}
