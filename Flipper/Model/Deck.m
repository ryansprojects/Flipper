//
//  Deck.m
//  Flipper
//
//  Created by Ryan Sanders on 5/13/14.
//  Copyright (c) 2014 RyanSanders. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards;

@end


@implementation Deck : NSObject

- (NSMutableArray *) cards {
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void) addCard:(Card *)card atTop:(BOOL)atTop {
    if(atTop){
        [self.cards insertObject:card atIndex:0];
    }
    else {
        [self.cards addObject:card];
    }
}

- (void) addCard:(Card *)card {
    [self addCard:card atTop:false];
}

- (Card *)drawRandomCard {
    Card *randomCard = nil;
    
    if([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end
