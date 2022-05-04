//
//  main.m
//  9Vars&DataTypes
//
//  Created by Dmitry Aksyonov on 30.04.2022.
//

#import <Foundation/Foundation.h>
#import "InitializableSubject.h"
#import "SubjectAllocator.h"
#import "Enums.h"
#import "SeasonConstructor.h"
#import "LocalLib/NSString+BinaryString.h"
#import "WeekendDetector.h"
#import "LocalLib/typedefs.h"

enum direction endOfData, matchFound;

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
		InitializableSubject *s0 = [InitializableSubject alloc];
		s0 = [s0 initWithValue0:1 and:13];
		[s0 print];
		
		NSLog(@"Hello, World!");
		
		InitializableSubject *s1, *s2;
		
		s1 = [SubjectAllocator allocSubject];
		s2 = [SubjectAllocator allocSubject];
		
		[SubjectAllocator getAllocationCount];
		
		endOfData = right;
		
		if (endOfData == right)
			{
			NSLog(@"Reached the end of data via mathcing with case");
			}
		
		if (endOfData == 4)
			{
			NSLog(@"Reached the end of data via matching with int");
			}
		
		Season season = [SeasonConstructor getSeasonFor: january];
		
		switch (season) {
			case winter:
				NSLog(@"Winter is cold");
				break;
			case spring:
				NSLog(@"Spring is a new life");
				break;
			case summer:
				NSLog(@"This ain't nothing but a summer jam");
				break;
			case fall:
				NSLog(@"Back to school");
				break;
		}

		int w0 = 0b00000001;
		int w1 = 0b00000010;
		int shiftRes0 = w0 & w1;
		NSLog(@"%@", [NSString toBinary: shiftRes0]);

		int16_t w2 = 0b0101000100011000;
		int16_t w3 = 0b0101000000011000;
		int shiftRes1 = w2 & w3;
		NSLog(@"%@", [NSString toBinary: shiftRes1]);

		uint8_t state0 = 0b10000000;
		uint8_t state1 = 0b01000000;
		uint8_t state2 = 0b00100000;
		uint8_t state3 = 0b00010000;
		uint8_t state4 = 0b00001000;
		uint8_t state5 = 0b00000100;
		uint8_t state6 = 0b00000010;
		uint8_t state7 = 0b00000001;

		uint8_t fifthBitMask = 0b00010000;

		/* state3 & fifthBitMask -> 10000 */

		WeekendDetector *w11 = [[WeekendDetector alloc]init];
		BOOL isWeekend = [w11 checkWeekendFor:mon];
		NSLog(@"%i", isWeekend);

		wkndchck w00 = [[WeekendDetector alloc]init],
		w111 = [[WeekendDetector alloc]init];
		
	}
	return 0;
}
