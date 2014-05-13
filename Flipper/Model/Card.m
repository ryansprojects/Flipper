//
//  Card.m
//  Flipper
//
//  Created by Ryan Sanders on 5/13/14.
//  Copyright (c) 2014 RyanSanders. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int) match:(NSArray *)otherCards {
    int score = 0;
    
    for (Card *card in otherCards) {
        if([card.contents isEqualToString:self.contents]){
            score++;
        }
    }
    
    return score;
}

@end
