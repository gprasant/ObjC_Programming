//
//  main.m
//  stocks
//
//  Created by Prasanth Guruprasad on 9/11/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRStockHolding *s1 = [[BNRStockHolding alloc] init];
        [s1 setCurrentPrice:2.30];
        [s1 setPurchasePrice:4.50];
        [s1 setNumberOfShares:40];

        BNRStockHolding *s2 = [[BNRStockHolding alloc] init];
        [s2 setCurrentPrice:12.19];
        [s2 setPurchasePrice:10.56];
        [s2 setNumberOfShares:90];

        BNRStockHolding *s3 = [[BNRStockHolding alloc] init];
        [s3 setCurrentPrice:45.10];
        [s3 setPurchasePrice:49.51];
        [s3 setNumberOfShares:210];

        NSArray *stocks = @[s1, s2, s3];

        for (BNRStockHolding *stock in stocks) {
            NSLog(@"cost: %f", [stock purchasePrice]);
            NSLog(@"value: %f", [stock valueInDollars]);
        }

        [stocks sortedArray]
    }
    return 0;
}
