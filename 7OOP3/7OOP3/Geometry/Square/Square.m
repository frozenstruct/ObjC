//
//  Square.m
//  7OOP3
//
//  Created by Dmitry Aksyonov on 23.04.2022.
//

#import "Square.h"

@implementation Square

-(void)setSide:(NSNumber *)s
{
	[self setWidth:s andHeight:s];
}

-(NSNumber *)side
{
	return self.width;
}

@end
