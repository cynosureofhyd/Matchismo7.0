//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Prashanth Yerramilli on 12/7/13.
//  Copyright (c) 2013 prashanth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"


@interface CardMatchingGame : NSObject
-(instancetype) initWithCardCount: (NSUInteger)count
                        usingDeck:(Deck *)deck;

-(void)chooseCardAtIndex:(NSUInteger)index;


-(Card *)cardAtIndex: (NSUInteger)index;

@property  (nonatomic, readonly) NSInteger score; 

@end
