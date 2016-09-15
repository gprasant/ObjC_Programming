//
//  testTimer.m
//  Timers
//
//  Created by Prasanth Guruprasad on 9/8/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import "testTimer.h"

@implementation testTimer

-(void)createTimer {
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                      target:self
                                                    selector:@selector(targetMethod)
                                                    userInfo:nil
                                                     repeats:YES];
}

-(void) targetMethod {
    printf("Mommy\n");

}

@end
