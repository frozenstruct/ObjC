//
//  ClassB.h
//  7OOP3
//
//  Created by Dmitry Aksyonov on 23.04.2022.
//

#import "ClassA.h"

NS_ASSUME_NONNULL_BEGIN

@interface ClassB : ClassA

-(void)printVar;
-(void)initVar:(int)value;

@end

NS_ASSUME_NONNULL_END
