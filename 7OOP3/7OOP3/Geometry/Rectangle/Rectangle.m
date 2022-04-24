//
//  Rectangle.m
//  7OOP3
//
//  Created by Dmitry Aksyonov on 23.04.2022.
//

#import "Rectangle.h"

#pragma mark Rectangle Public

@implementation Rectangle

#pragma mark iVars

{
	XYPoint *origin;
}

#pragma mark Properties

@synthesize width, height;

#pragma mark Initialization

- (id)initZeroed
{
	self = [super init];
	if (self) {
		origin = [[XYPoint alloc]init];
		[origin setX:@0 andY:@0];

		[self setWidth:@0 andHeight:@0];
	}

	return self;
}

- (id)initFromTopLeft:(struct point)lPoint andBottomRight:(struct point)rPoint
{
	self = [super init];
	if (self) {
		origin = [[XYPoint alloc]init];

		NSNumber *tlx, *tly, *w, *h;

		tlx = [[NSNumber alloc]initWithDouble: lPoint.x];
		tly = [[NSNumber alloc]initWithDouble: lPoint.y];

		w = [[NSNumber alloc]initWithDouble: rPoint.x - lPoint.x];
		h = [[NSNumber alloc]initWithDouble: lPoint.y - rPoint.y];

		[origin setX:tlx andY:tly];

		[self setWidth:w andHeight:h];
	}
	
	return self;
}

#pragma mark Points

- (void)setOrigin:(XYPoint *)pt
{
	if (!origin)
		{
		origin = [[XYPoint alloc]init];
		}

	[origin setX:pt.x andY:pt.y];
}

- (XYPoint *)origin
{
	return origin;
}

- (struct point)topLeft
{
	struct point tl;

	if (!origin) {
		tl.x = 0;
		tl.y = 0;
	} else {
		tl.x = [origin.x doubleValue];
		tl.y = [origin.y doubleValue];
	}

	return tl;
}

- (struct point)bottomLeft
{
	struct point bl;

	if (!origin) {
		bl.x = 0;
		bl.y = 0;
	} else {
		bl.x = [origin.x doubleValue];
		bl.y = [origin.y doubleValue] - [height doubleValue];
	}

	return bl;
}

- (struct point)topRight
{
	struct point tr;

	if (!origin) {
		tr.x = 0;
		tr.y = 0;
	} else {
		tr.x = [origin.x doubleValue] + [width doubleValue];
		tr.y = [origin.y doubleValue];
	}

	return tr;
}

- (struct point)bottomRight
{
	struct point br;

	if (!origin) {
		br.x = 0;
		br.y = 0;
	} else {
		br.x = [origin.x doubleValue] + [width doubleValue];
		br.y = [origin.y doubleValue] - [height doubleValue];
	}

	return br;
}

#pragma mark Width Setter

-(void)setWidth:(NSNumber *)width andHeight:(NSNumber *) height
{
	self.width = width;
	self.height = height;
}

#pragma mark Decription

- (NSString *)rectDescription
{
	NSString *a, *b;
	double tlx, tly;

	tlx = self.topLeft.x;
	tly = self.topLeft.y;

	a = [[NSString alloc]initWithFormat:@"%f", tlx];
	b = [[NSString alloc]initWithFormat:@"%f", tly];

	return [NSString stringWithFormat:@"x:%@ y:%@ w:%@ h:%@", a, b, self.width, self.height];
}

#pragma mark Calculations

-(NSNumber *)area
{
	NSNumber *area = [NSNumber numberWithFloat:([width floatValue] * [height floatValue])];
	return area;
}

-(NSNumber *)perimeter
{
	NSNumber *perimeter = [NSNumber numberWithFloat:([width floatValue] + [height floatValue]) * 2];
	return perimeter;
}

- (Rectangle *)intersectWith:(Rectangle *)rect
{
	bool ni0, ni1, ni2, ni3;
	double x1, y1, x2, y2;

	ni0 = self.topLeft.x > rect.topRight.x;
	ni1 = self.topRight.x < rect.topLeft.x;
	ni2 = self.topLeft.y < rect.bottomRight.y;
	ni3 = self.topRight.y > rect.bottomRight.y;
	
	if (ni0 || ni1 || ni2 || ni3) {
		x1 = fmax(self.topLeft.x, rect.topLeft.x);
		y1 = fmin(self.topLeft.y, rect.topLeft.y);

		x2 = fmin(self.bottomRight.x, rect.bottomRight.x);
		y2 = fmax(self.bottomRight.y, rect.bottomRight.y);

		struct point tl = { x1, y1 };
		struct point br = { x2, y2 };

		return [[Rectangle alloc]initFromTopLeft:tl andBottomRight:br];
	} else {
		return [[Rectangle alloc]initZeroed];
	}
}

#pragma mark Draw

- (void)draw
{
	// нарисовать верх
	// нарисовать грани
	// нарисовать низ

	NSMutableString *h = [[NSMutableString alloc]init];
	NSMutableString *v = [[NSMutableString alloc]init];

	for (int i = 0; i <= [self.width intValue]; i++) {
		[h appendString:@"-"];
	}

	for (int i = 0; i <= [self.width intValue]; i++) {
		if (i == 0 || i == [self.width intValue]) {
			[v appendString:@"|"];
		} else {
			[v appendString:@" "];
		}
	}

	NSLog(@"%@", h);

	for (int i = 0; i <= [self.height intValue]; i++) {
		NSLog(@"%@", v);
	}

	NSLog(@"%@", h);
}

@end
