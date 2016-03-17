//
//  FizzBuzzDto.h
//  FizzBuzz
//
//  Created by Manuel González Villegas on 14/3/16.
//  Copyright © 2016 Manuel González Villegas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FizzBuzzDto : NSObject

@property NSMutableArray<NSNumber *> *numbers;
@property NSString *message;

- (instancetype)initWithNumbers:(NSMutableArray<NSNumber *> *)numbers andMessage:(NSString *)message;
- (BOOL) isDivisible:(NSNumber *)number;

@end
