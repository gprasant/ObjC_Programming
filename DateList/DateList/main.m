//
//  main.m
//  DateList
//
//  Created by Prasanth Guruprasad on 9/8/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24 * 60 * 60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24 * 60 * 60];

        NSMutableArray *dates = [NSMutableArray array];

        [dates addObject:now];
        [dates addObject:tomorrow];
        [dates insertObject:yesterday atIndex:0];

        NSLog(@"The first date is %@", dates[0]);
        NSLog(@"The third date is %@", dates[2]);

        NSLog(@"There are %lu dates", [dates count]);

        for (NSDate *d in dates) {
            NSLog(@"Here's a date: %@", d);
        }
        [dates removeObjectAtIndex:0];

        NSLog(@"Now the first date is : %@", dates[0]);

    }
    return 0;
}
