//
//  FlipperViewController.m
//  Flipper
//
//  Created by Ryan Sanders on 5/12/14.
//  Copyright (c) 2014 RyanSanders. All rights reserved.
//

#import "FlipperViewController.h"

@interface FlipperViewController ()

@end

@implementation FlipperViewController


- (IBAction)cardClickedButton:(UIButton *)sender {
    
    if([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"backofcard"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:normal];
    }
    else {
        [sender setBackgroundImage:[UIImage imageNamed:@"frontofcard"] forState:UIControlStateNormal];
        [sender setTitle:@"A♠︎" forState:normal];
    }
    
}

@end
