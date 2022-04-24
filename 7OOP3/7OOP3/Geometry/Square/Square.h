//
//  Square.h
//  7OOP3
//
//  Created by Dmitry Aksyonov on 23.04.2022.
//

#import "Rectangle.h"

NS_ASSUME_NONNULL_BEGIN

@interface Square : Rectangle

-(void)setSide:(NSNumber *)s;
-(NSNumber *)side;

@end

NS_ASSUME_NONNULL_END
