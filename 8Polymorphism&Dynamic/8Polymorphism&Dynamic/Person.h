//
//  Person.h
//  8Polymorphism&Dynamic
//
//  Created by Dmitry Aksyonov on 28.04.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property NSString *firstName, *lastName;
@property NSDate *dateOfBirth;

- (void)sayHello;
- (void)print;

+ (Person *)person;

@end

NS_ASSUME_NONNULL_END
