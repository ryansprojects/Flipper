//
//  Deck.h
//  Flipper
//
//  Created by Ryan Sanders on 5/13/14.
//  Copyright (c) 2014 RyanSanders. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard:(Card *)card atTop:(BOOL)atTop;
- (void) addCard:(Card *)card;

- (Card *) drawRandomCard;

@end
