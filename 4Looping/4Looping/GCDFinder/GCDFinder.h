//
//  GCDFinder.h
//  4Looping
//
//  Created by Аксёнов Дмитрий Александрович on 14.04.2022.
//

#ifndef GCDFinder_h
#define GCDFinder_h

@interface GCDFinder : NSObject

- (NSNumber *)greatestCommonDivisor:(int)firstValue and:(int)secondValue;
- (NSMutableArray *)getDivisorsForOdd:(int)odd;
- (NSMutableArray *)getDivisorsForEven:(int)even;
- (BOOL)checkOddOrEven:(int)number;

@end

#endif /* GCDFinder_h */
