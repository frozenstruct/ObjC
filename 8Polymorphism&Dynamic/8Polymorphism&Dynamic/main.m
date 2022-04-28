//
//  main.m
//  8Polymorphism&Dynamic
//
//  Created by Аксёнов Дмитрий Александрович on 28.04.2022.
//

#import <Foundation/Foundation.h>

#import "Complex.h"
#import "Class0.h"
#import "Class1.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {

		Class0 *obj0 = [[Class0 alloc]init];
		Class1 *obj1 = [[Class1 alloc]init];
		Complex *obj2 = [[Complex alloc]init];

		[obj0 print];
		[obj1 print];
		[obj2 print];

		id dataValue;
		dataValue = obj2;

		Person *p0 = [[Person alloc]init];
		[p0 sayHello];

		Person *p1 = [Person person];

		SEL sayHelloSelector = @selector(sayHello);
		bool res = [p1 respondsToSelector: sayHelloSelector];
		printf("%d\n", res);

		SEL noSuchSelector = @selector(noSuchMethod);
		@try {
			[p1 performSelector:noSuchSelector];
		} @catch (NSException *exception) {
			NSLog(@"%@", [exception callStackSymbols]);
		} @finally {
			NSLog(@"Continued execution");
		}

		dataValue = [Person person];
		[dataValue setFirstName:@"Brad"];
		[dataValue setLastName:@"Cox"];
		[dataValue print];
	}

	return 0;
}
