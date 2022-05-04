//
//  SeasonConstructor.h
//  9Vars&DataTypes
//
//  Created by Dmitry Aksyonov on 01.05.2022.
//

#import <Foundation/Foundation.h>
#import "Enums.h"

NS_ASSUME_NONNULL_BEGIN

@interface SeasonConstructor : NSObject

+ (Season)getSeasonFor:(enum month)month;

@end

NS_ASSUME_NONNULL_END
