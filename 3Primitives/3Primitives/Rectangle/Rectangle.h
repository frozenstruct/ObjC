//
//  Rectangle.h
//  3Primitives
//
//  Created by Dmitry Aksyonov on 07.04.2022.
//

#ifndef Rectangle_h
#define Rectangle_h

@interface Rectangle : NSObject

-(void) setWidth: (int) w;
-(void) setHeight: (int) h;

-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;

@end

#endif /* Rectangle_h */
