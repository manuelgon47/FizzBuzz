//
//  ViewController.m
//  FizzBuzz
//
//  Created by Manuel González Villegas on 14/3/16.
//  Copyright © 2016 Manuel González Villegas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _list = [[NSMutableArray alloc] init];
 
    NSMutableArray<NSNumber *> *array3 = [[NSMutableArray alloc] init];
    [array3 addObject:[NSNumber numberWithInt:3]];
    FizzBuzzDto *div3 = [[FizzBuzzDto alloc] initWithNumbers:array3 andMessage:@"Fizz"];
    [_list addObject:div3];
    
    NSMutableArray<NSNumber *> *array5 = [[NSMutableArray alloc] init];
    [array5 addObject:[NSNumber numberWithInt:5]];
    FizzBuzzDto *div5 = [[FizzBuzzDto alloc] initWithNumbers:array5 andMessage:@"Buzz"];
    [_list addObject:div5];

    NSMutableArray<NSNumber *> *array3y5 = [[NSMutableArray alloc] init];
    [array3y5 addObject:[NSNumber numberWithInt:3]];
    [array3y5 addObject:[NSNumber numberWithInt:5]];
    FizzBuzzDto *div3y5 = [[FizzBuzzDto alloc] initWithNumbers:array3y5 andMessage:@"Fizz Buzz"];
    [_list addObject:div3y5];
    
    _list = [NSMutableArray arrayWithArray:[_list sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        FizzBuzzDto *f1 = (FizzBuzzDto *)obj1;
        FizzBuzzDto *f2 = (FizzBuzzDto *)obj2;
        
        if (f1.numbers.count > f2.numbers.count) {
            return NSOrderedAscending;
        } else if (f1.numbers.count < f2.numbers.count) {
            return NSOrderedDescending;
        } else {
            return NSOrderedSame;
        }
    }]];
    
}

- (IBAction)fizzBuzzAction:(id)sender {
    NSString *result = @"NONE";
    if (_list != nil && [_list count] > 0) {
        // Transform NSString to NSNumber
        NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
        f.numberStyle = NSNumberFormatterDecimalStyle;
        NSNumber *number = [f numberFromString:[_inputNumber text]];
        
        // Search in NSMutableArray
        NSInteger index = [_list indexOfObjectPassingTest:^BOOL(FizzBuzzDto *fizzBuzzDto, NSUInteger idx, BOOL *stop){
            return [fizzBuzzDto isDivisible:number];
        }];
        
        // If result is successfull print message
        if (index != NSNotFound) {
            result = [_list[index] message];
        }
    }
    
    [_result setText:result];
}

/**
 If number is divisible by 3 print fizz;
 If divisible by 5 print buzz;
 If divisible by 3 and 5, print fizz buzz.
 */
- (void)fizzBuzz:(int)number {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
