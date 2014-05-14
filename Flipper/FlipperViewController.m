//
//  FlipperViewController.m
//  Flipper
//
//  Created by Ryan Sanders on 5/12/14.
//  Copyright (c) 2014 RyanSanders. All rights reserved.
//

#import "FlipperViewController.h"
#import "CardMatchingGame.h"

@interface FlipperViewController ()

@property (strong, nonatomic) PlayingCardDeck *deck;
@property (strong, nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation FlipperViewController

- (CardMatchingGame *)game {
    if(!_game) _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count]
                                                         usingDeck:[self createPlayingCardDeck]];
        return _game;
}

- (PlayingCardDeck *)deck {
    if(!_deck) _deck = [self createPlayingCardDeck];
    return _deck;
}

- (PlayingCardDeck *)createPlayingCardDeck {
    return [[PlayingCardDeck alloc] init];
}

- (IBAction)cardClickedButton:(UIButton *)sender {
    NSUInteger chooseButtonIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:chooseButtonIndex];
    [self updateUI];
}

- (void)updateUI {
    for (UIButton *cardButton in self.cardButtons) {
        NSUInteger cardButtonIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundForCard:card] forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %ld", (long)self.game.score];
    }
}

- (NSString *)titleForCard:(Card *)card {
    return card.isChosen? card.contents : @"";
}

- (UIImage *)backgroundForCard:(Card *)card {
    return [UIImage imageNamed:card.isChosen? @"frontofcard" : @"backofcard"];
}

@end
