//
//  SubjectAllocator.h
//  9Vars&DataTypes
//
//  Created by Dmitry Aksyonov on 30.04.2022.
//

#import <Foundation/Foundation.h>
#import "InitializableSubject.h"
#import "globalVars.h"

NS_ASSUME_NONNULL_BEGIN

@interface SubjectAllocator : NSObject

+ (InitializableSubject *)allocSubject;

+ (void)getAllocationCount;

@end

NS_ASSUME_NONNULL_END
