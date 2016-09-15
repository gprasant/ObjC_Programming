//
//  main.m
//  Times2
//
//  Created by Prasanth Guruprasad on 9/7/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);

        NSDate *startTime = currentTime;
        sleep(2);

        currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
        NSLog(@"startTime's value is %p", startTime);
    }
    return 0;
}
