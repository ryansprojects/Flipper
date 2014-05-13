//
//  Card.h
//  Flipper
//
//  Created by Ryan Sanders on 5/13/14.
//  Copyright (c) 2014 RyanSanders. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

-(int) match:(NSArray *) otherCards;

@end
