//
//  SwitchCalc.h
//  5Conditionals
//
//  Created by Аксёнов Дмитрий Александрович on 15.04.2022.
//

#ifndef Calculator_h
#define Calculator_h

@interface Calculator : NSObject

-(void)setLhsWith:(int)value;
-(void)setRhsWith:(int)value;

-(void)setActionWith:(char)value;
-(void)execute;

@end

#endif /* SwitchCalc_h */
