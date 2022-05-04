//
//  SubjectAllocator.m
//  9Vars&DataTypes
//
//  Created by Dmitry Aksyonov on 30.04.2022.
//

#import "SubjectAllocator.h"

@implementation SubjectAllocator

+ (InitializableSubject *)allocSubject
{
	extern int gAllocCounter;
	gAllocCounter++;

	return [InitializableSubject alloc];
}

+ (void)getAllocationCount
{
	extern int gAllocCounter;
	NSLog(@"Allocated subject %i times", gAllocCounter);
}

@end
