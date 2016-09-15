//
//  BNRStockHolding.m
//  stocks
//
//  Created by Prasanth Guruprasad on 9/11/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

-(float) costInDollars {
    return _purchasePrice * _numberOfShares;
}

-(float) valueInDollars {
    return _currentPrice * _numberOfShares;
}


-(void) setPurchasePrice:(float)value {
    _purchasePrice = value;
}

-(void) setCurrentPrice:(float)value {
    _currentPrice = value;
}

-(void) setNumberOfShares:(int)value {
    _numberOfShares = value;
}

-(float)purchasePrice {
    return _purchasePrice;
}

@end
