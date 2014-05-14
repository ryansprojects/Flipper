//
//  CardMatchingGame.h
//  Flipper
//
//  Created by Ryan Sanders on 5/14/14.
//  Copyright (c) 2014 RyanSanders. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"

@interface CardMatchingGame : NSObject

- (instancetype) initWithCardCount:(NSUInteger)count
                         usingDeck:(Deck *)deck;

- (void) chooseCardAtIndex:(NSUInteger)index;

- (Card *) cardAtIndex: (NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end
