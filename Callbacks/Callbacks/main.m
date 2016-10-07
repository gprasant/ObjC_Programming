//
//  main.m
//  Callbacks
//
//  Created by Prasanth Guruprasad on 9/22/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRLogger.h"

int main(int argc, const char * argv[]) {
//     Example 1: This demonstrates target-action pattern. The lastTime is updated once every 2 seconds
//    @autoreleasepool {
//        //bnr logger
//        BNRLogger *logger = [[BNRLogger alloc] init];
//        // timer = NSTimer scheduledTimerWithTimeInterval
//        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
//                                                          target:logger
//                                                        selector:@selector(updateLastTime:)
//                                                        userInfo:nil
//                                                         repeats:YES];
//        [[NSRunLoop currentRunLoop] run];
//    }

    @autoreleasepool {
        // BNRLogger
        BNRLogger *logger = [[BNRLogger alloc] init];

        // observe notifications for NSSystemTimeZoneDidChangeNotification
//        [[NSNotificationCenter defaultCenter] addObserver:logger
//                                                 selector:@selector(zoneChange:)
//                                                     name:NSSystemTimeZoneDidChangeNotification
//                                                   object:nil];

        [[NSNotificationCenter defaultCenter] addObserverForName:NSSystemTimeZoneDidChangeNotification
                                                          object:nil
                                                           queue:nil
                                                      usingBlock:^(NSNotification * _Nonnull note) {
                                                                        NSLog(@"Time zone changed.");
                                                                    }
         ];
        // nsurl
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        // nsurlrequest
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        // nsurlconnection - with delegate
        NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:req
                                                                      delegate:logger
                                                              startImmediately:YES];
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
