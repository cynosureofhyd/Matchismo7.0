//
//  PlayingCard.m
//  Matchismo
//
//  Created by Cynosure on 12/7/13.
//  Copyright (c) 2013 prashanth. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

-(NSString *)contents
{
    NSArray *rankStrings = @[@"?", @"1", @"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
    return [rankStrings[self.rank] stringByAppendingString: self.suit];
    }

-(void)setSuit:(NSString *)suit
{
    if ([@[@"♠️",@"♥︎",@"♦︎",@"♤"] containsObject:suit]) {
        _suit = suit;
    }
}


-(NSString *)suit
{
    return _suit ? _suit :@"?";
}
@end
