//
//  PlayingCard.m
//  Flipper
//
//  Created by Ryan Sanders on 5/13/14.
//  Copyright (c) 2014 RyanSanders. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

// Needed because we overrode both setter and getter
@synthesize suit = _suit;

// Override the suit getter
- (NSString *) suit {
    return _suit ? _suit : @"?";
}

// Override the suit setter
- (void) setSuit:(NSString *)suit {
    if([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}

// Override the rank setter
- (void) setRank:(NSUInteger)rank {
    if(rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

// Override the super contents getter
- (NSString*) contents {
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *) validSuits {
    return @[@"♠︎", @"♣︎", @"♥︎", @"♦︎"];
}

+ (NSArray *) rankStrings {
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger) maxRank {
    return [[self rankStrings] count]-1;
}

@end
