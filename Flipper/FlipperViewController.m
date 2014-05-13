//
//  FlipperViewController.m
//  Flipper
//
//  Created by Ryan Sanders on 5/12/14.
//  Copyright (c) 2014 RyanSanders. All rights reserved.
//

#import "FlipperViewController.h"

@interface FlipperViewController ()

@property (strong, nonatomic) PlayingCardDeck *deck;

@end

@implementation FlipperViewController

- (PlayingCardDeck *)deck {
    if(!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}


- (IBAction)cardClickedButton:(UIButton *)sender {
    
    if([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"backofcard"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:normal];
    }
    else {
        [sender setBackgroundImage:[UIImage imageNamed:@"frontofcard"] forState:UIControlStateNormal];
        Card *card = [self.deck drawRandomCard];
        if (card) {
            [sender setTitle:card.contents forState:UIControlStateNormal];
        }
    }
}

@end
