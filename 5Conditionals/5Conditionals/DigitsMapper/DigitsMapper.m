//
//  DigitsMapper.m
//  5Conditionals
//
//  Created by Аксёнов Дмитрий Александрович on 16.04.2022.
//

#import <Foundation/Foundation.h>

#import "DigitsMapper.h"

@implementation DigitsMapper

-(void)mapDigitsToSpellOut:(int)number
{
	if (number == 0)
	{
		NSLog(@"%s", "zero");
		return;
	}

	if (number < 0)
	{
		NSLog(@"%s", "minus");
	}

	int n, c;

	/// Get input number count
	n = number;
	c = 0;

	do {
		n /= 10;
		c++;
	} while (n != 0);

	NSNumberFormatter *formatter = [self prepareNumberFormatter];

	n = abs(number);

	if (c == 1)
	{
		NSString *spellOutString = [self getSpellOutStringFrom:n :formatter];
		NSLog(@"%@", spellOutString);
	}
	else
	{
		/// Initialize char array with size == c

		int s[c];

		/// For each digit in number append the digit to the char array

		for (int i = 0; i < c; i++)
		{
			s[i] = n % 10;
			n /= 10;
		}

		/// Spell out all ints in int array, reversed

		for (int i = c - 1; i >= 0; i--)
		{
			int n = s[i];
			NSString *spellOutString = [self getSpellOutStringFrom:n :formatter];
			NSLog(@"%@", spellOutString);
		}
	}
}

-(NSNumberFormatter *)prepareNumberFormatter
{
	NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
	[formatter setNumberStyle:NSNumberFormatterSpellOutStyle];
	return  formatter;
}

-(NSString *)getSpellOutStringFrom:(int)number :(NSNumberFormatter *)formatter
{
	NSNumber *spellOutNumber = [NSNumber numberWithInt:number];
	return [formatter stringFromNumber:spellOutNumber];
}

@end
