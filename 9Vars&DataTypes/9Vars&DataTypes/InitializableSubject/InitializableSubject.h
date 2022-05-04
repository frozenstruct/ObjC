//
//  InitializableSubject.h
//  9Vars&DataTypes
//
//  Created by Dmitry Aksyonov on 30.04.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InitializableSubject : NSObject

@property int value0, value1;

-(instancetype)initWithValue0:(int)value0 and:(int)value1;

- (void)setValues:(int)value0 and:(int)value1;

- (void)print;

@end

NS_ASSUME_NONNULL_END
