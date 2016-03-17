//
//  FizzBuzzDto.m
//  FizzBuzz
//
//  Created by Manuel González Villegas on 14/3/16.
//  Copyright © 2016 Manuel González Villegas. All rights reserved.
//

#import "FizzBuzzDto.h"

@implementation FizzBuzzDto

- (instancetype)initWithNumbers:(NSMutableArray<NSNumber *> *)numbers andMessage:(NSString *)message {
    self = [super init];
    if (self) {
        self.numbers = numbers;
        self.message = message;
    }
 
     return self;
}

/**
 * @return YES if ecah _numbers elements is divisible by @param number
 */
- (BOOL) isDivisible:(NSNumber *)number {
    BOOL isDivisible = NO;
    
    NSEnumerator *e = [_numbers objectEnumerator];
    id object = [e nextObject];
    
    do {
        NSNumber * cuurentElement = (NSNumber *)object;
        isDivisible = (float)((int)[number intValue] % (int)[cuurentElement intValue]) == 0;
    } while (isDivisible && (object = [e nextObject]));
    
    return isDivisible;
}


@end
