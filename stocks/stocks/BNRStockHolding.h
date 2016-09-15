//
//  BNRStockHolding.h
//  stocks
//
//  Created by Prasanth Guruprasad on 9/11/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

{
    // Instance variables
    float _purchasePrice;
    float _currentPrice;
    int _numberOfShares;
}

-(float) costInDollars;
-(float) valueInDollars;

//setters
-(void) setPurchasePrice:(float)value;
-(void) setCurrentPrice:(float)value;
-(void) setNumberOfShares:(int)value;

// getters
-(float) purchasePrice;

@end
