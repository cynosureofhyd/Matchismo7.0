//
//  ViewController.m
//  Matchismo
//
//  Created by Cynosure on 12/6/13.
//  Copyright (c) 2013 prashanth. All rights reserved.
#import "ViewController.h"
#import "Deck.h"
#import "CardMatchingGame.h"
#import "PlayingCardDeck.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) CardMatchingGame *game;

@end

@implementation ViewController

-(CardMatchingGame *)game
{
    if (!_game) {
        _game = [[CardMatchingGame alloc]initWithCardCount:0 usingDeck:[self createDeck]];
    }
    return _game;
}

-(Deck *)deck
{
    if(!_deck)_deck = [self createDeck];
    return _deck;
}

-(Deck *)createDeck
{
    return [[PlayingCardDeck alloc]init];
}

-(void)setCardButtons:(NSArray *)cardButtons
{
    _cardButtons = cardButtons;
    for(UIButton *cardButton in cardButtons)
    {
        Card *card = [self.deck drawRandomCard];
        [cardButton setTitle:card.contents forState:UIControlStateSelected];
    }
}

-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipButton:(UIButton *)sender {
    sender.selected = !sender.selected;
    
    self.flipCount++;
}

@end
