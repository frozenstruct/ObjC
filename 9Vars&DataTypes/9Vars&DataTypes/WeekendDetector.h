//
//  WeekendDetector.h
//  9Vars&DataTypes
//
//  Created by Аксёнов Дмитрий Александрович on 04.05.2022.
//

#import <Foundation/Foundation.h>
#import "LocalLib/Enums.h"

NS_ASSUME_NONNULL_BEGIN

@interface WeekendDetector : NSObject

- (BOOL)checkWeekendFor:(Day)day;

@end

NS_ASSUME_NONNULL_END
