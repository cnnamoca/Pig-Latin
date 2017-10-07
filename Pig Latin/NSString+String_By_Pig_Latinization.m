//
//  NSString+String_By_Pig_Latinization.m
//  Pig Latin
//
//  Created by Carlo Namoca on 2017-10-06.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "NSString+String_By_Pig_Latinization.h"

@implementation NSString (String_By_Pig_Latinization)

-(NSString *)stringByPigLatinization
{
    
    NSCharacterSet *vowelSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    NSCharacterSet *consonantSet = [NSCharacterSet characterSetWithCharactersInString:@"bcdfghjklmnpqrstvwx"];

    NSRange first = [self rangeOfComposedCharacterSequenceAtIndex:0];

    NSRange matchVowel= [self rangeOfCharacterFromSet:vowelSet options:0 range:first];
    NSRange matchCons= [self rangeOfCharacterFromSet:consonantSet options:0 range: first];
    
    if (matchVowel.location != NSNotFound) {
        [self stringByAppendingString:@"way"];
        return [self stringByAppendingString:@"way"];
    } else if (matchCons.location != NSNotFound){
        
        NSMutableArray<NSString *> *characters = [[NSMutableArray alloc]initWithCapacity:[self length]];
        [self enumerateSubstringsInRange:NSMakeRange(0, self.length)
                                 options:NSStringEnumerationByComposedCharacterSequences
                              usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop){[characters addObject:substring];
                              }];
        
        NSUInteger firstVowelIndex = 0;
        while ((firstVowelIndex < [self length]) && [consonantSet characterIsMember:[self characterAtIndex:firstVowelIndex]])
            ++firstVowelIndex;

        NSString *consonantsThatStartWord = [self substringToIndex:firstVowelIndex];
        NSString *x = [[[self substringFromIndex:firstVowelIndex] stringByAppendingString:consonantsThatStartWord] stringByAppendingString:@"ay"];
        return x;
    }
    return 0;
}






@end
