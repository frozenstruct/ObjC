//
//  main.m
//  7OOP3
//
//  Created by Dmitry Aksyonov on 23.04.2022.
//

#import <Foundation/Foundation.h>

#import "OOPTest/ClassB/ClassB.h"
#import "OOPTest/ClassC/ClassC.h"
#import "Geometry/Square/Square.h"
#import "Geometry/Circle/Circle.h"
#import "Geometry/Triangle/Triangle.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {

		struct point tl1 = { 10, 10 };
		struct point br1 = { 13, 7 };
		struct point tl2 = { 11, 11 };
		struct point br2 = { 14, 8 };
		Rectangle *r0 = [[Rectangle alloc]initFromTopLeft:tl1 andBottomRight:br1];
		Rectangle *r1 = [[Rectangle alloc]initFromTopLeft:tl2 andBottomRight:br2];
		NSLog(@"%@", [r0 rectDescription]);
		NSLog(@"%@", [r1 rectDescription]);

		Rectangle *r2 = [r0 intersectWith:r1];
		NSLog(@"%@", [r2 rectDescription]);
		[r2 draw];
	}

	return 0;
}
