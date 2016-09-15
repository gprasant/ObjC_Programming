//
//  main.m
//  Timers
//
//  Created by Prasanth Guruprasad on 9/8/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "testTimer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        testTimer *tt = [[testTimer alloc] init];
        [tt createTimer];
    }
    return 0;
}
