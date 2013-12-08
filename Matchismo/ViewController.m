//
//  ViewController.m
//  Matchismo
//
//  Created by Cynosure on 12/6/13.
//  Copyright (c) 2013 prashanth. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property   (strong, nonatomic) Deck *deck;
@end

@implementation ViewController


-(Deck *)deck
{
    if(!_deck)_deck = [self createDeck];
    return _deck;
}

-(Deck *)createDeck
{
    return [[PlayingCardDeck alloc]init];
}

-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}


- (IBAction)flipButton:(UIButton *)sender {
    if(sender.isSelected)
        sender.selected = NO;
    else
    {
        Card *randomCard = [self.deck drawRandomCard];
        if(randomCard)
        {
            [sender setTitle:randomCard.contents forState:UIControlStateNormal];
            sender.selected = YES;
        }
    }
     self.flipCount++;
}

@end
