//
//  main.m
//  Stockz
//
//  Created by Prasanth Guruprasad on 10/3/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *stocks = [NSMutableArray array];
        NSMutableDictionary *stock = [NSMutableDictionary dictionary];
        stock[@"symbol"] = @"AAPL";
        stock[@"shares"] = @200;
        stock[@"date"]  = [NSDate date];
        stock[@"price"] = [NSNumber numberWithFloat:100.62];
        stock[@"isHot"] = @YES;

        [stocks addObject:stock];

        stock = [NSMutableDictionary dictionary];
        stock[@"symbol"] = @"GOOG";
        stock[@"shares"] = @160;
        stock[@"date"]   = [NSDate date];
        stock[@"price"]  = [NSNumber numberWithFloat:97.54];
        stock[@"isHot"]  = @YES;


        [stocks addObject:stock];

        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];

        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ stocks of %@", d[@"shares"], d[@"symbol"]);
        }
    }
    return 0;
}
