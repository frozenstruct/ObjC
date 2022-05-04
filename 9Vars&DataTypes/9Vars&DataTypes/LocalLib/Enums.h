//
//  Enum.h
//  9Vars&DataTypes
//
//  Created by Dmitry Aksyonov on 01.05.2022.
//

#ifndef Enum_h
#define Enum_h

#import "Foundation/Foundation.h"

enum direction { up = 1, down, left, right };

typedef NS_ENUM(NSUInteger, month) {
	january = 1,
	february,
	march,
	april,
	may,
	june,
	july,
	august,
	september,
	october,
	november,
	december
};

typedef enum { winter, spring, summer, fall } Season;

typedef enum { mon, tue, wed, thu, fri, sat, sun } Day;

#endif /* Enum_h */
