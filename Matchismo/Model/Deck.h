//
//  Deck.h
//  Matchismo
//
//  Created by Cynosure on 12/6/13.
//  Copyright (c) 2013 prashanth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card;

-(void)addCard:(Card *) atTop :(BOOL)atTop;

-(Card *)drawRandomCard;

@end
