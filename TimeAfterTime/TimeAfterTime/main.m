//
//  main.m
//  TimeAfterTime
//
//  Created by Prasanth Guruprasad on 9/6/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSLog(@"The NSDate object lives at %p.", now);
        NSLog(@"The date is %@", now);

        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since 1970.", seconds);

        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000s it will be %@", later);

        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"Calendar is %@", [cal calendarIdentifier]);

        unsigned long ord = [cal ordinalityOfUnit:NSCalendarUnitDay
                       inUnit:NSCalendarUnitMonth
                      forDate:now];
        NSLog(@"The day is %lu of the month", ord);

        /**
         *  Challenge: find number of seconds you've been alive
         */
        NSDate *now1 = [NSDate date];

        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1989];
        [comps setMonth:4];
        [comps setDay:14];

        NSCalendar *c = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
        NSDate *born = [c dateFromComponents:comps];

        unsigned long aliveSeconds = [now1 timeIntervalSinceDate:born];
        NSLog(@"I've been alive for %lu seconds", aliveSeconds);

    }
    return 0;
}
