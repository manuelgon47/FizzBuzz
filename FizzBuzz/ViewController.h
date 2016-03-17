//
//  ViewController.h
//  FizzBuzz
//
//  Created by Manuel González Villegas on 14/3/16.
//  Copyright © 2016 Manuel González Villegas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FizzBuzzDto.h"

@interface ViewController : UIViewController

@property NSMutableArray<FizzBuzzDto *> *list;
@property (weak, nonatomic) IBOutlet UILabel *result;
@property (weak, nonatomic) IBOutlet UITextField *inputNumber;

@end

