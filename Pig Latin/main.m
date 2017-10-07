//
//  main.m
//  Pig Latin
//
//  Created by Carlo Namoca on 2017-10-06.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSString+String_By_Pig_Latinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    NSString *myString = (@"clear");
    NSLog (@"%@", [myString stringByPigLatinization]);
        
    


    }
    return 0;
}
