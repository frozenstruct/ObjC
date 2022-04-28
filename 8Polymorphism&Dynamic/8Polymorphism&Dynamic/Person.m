//
//  Person.m
//  8Polymorphism&Dynamic
//
//  Created by Dmitry Aksyonov on 28.04.2022.
//

#import "Person.h"

@implementation Person

@synthesize firstName, lastName, dateOfBirth;

- (void)sayHello
{
	NSLog(@"%s", "Hello, World!");
}

- (void)print
{
	NSLog(@"%@, %@", firstName, lastName);
}

+ (Person *)person
{
	return [[self alloc]init];
}

@end
