//
//  PlayingCard.h
//  Matchismo
//
//  Created by Cynosure on 12/7/13.
//  Copyright (c) 2013 prashanth. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;

@property (nonatomic, assign) NSUInteger rank;

+(NSArray *)rankStrings;

+(NSArray *)validSuits;

+(NSUInteger)maxRank;
@end
