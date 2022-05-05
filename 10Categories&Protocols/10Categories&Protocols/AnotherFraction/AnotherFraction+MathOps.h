//
//  AnotherFraction+MathOps.h
//  10Categories&Protocols
//
//  Created by Dmitry Aksyonov on 16.05.2022.
//

#ifndef AnotherFraction_MathOps_h
#define AnotherFraction_MathOps_h

#import "AnotherFraction.h"

@interface AnotherFraction (MathOps)

- (Frac *)add:(Frac *)f;
- (Frac *)mul:(Frac *)f;
- (Frac *)sub:(Frac *)f;
- (Frac *)div:(Frac *)f;

@end

#endif /* AnotherFraction_MathOps_h */
