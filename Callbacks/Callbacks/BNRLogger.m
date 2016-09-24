//
//  BNRLogger.m
//  Callbacks
//
//  Created by Prasanth Guruprasad on 9/22/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import "BNRLogger.h"

@interface BNRLogger()
- (void) zoneChange: (NSNotification *)n;
@end

@implementation BNRLogger

- (NSString *)lastTimeString {
    static NSDateFormatter *dateFormatter = nil;

    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
    }

    return [dateFormatter stringFromDate:self.lastTime];
}

- (void) updateLastTime:(NSTimer *)t {
    NSDate *now = [NSDate date];
    self.lastTime = now;
    NSLog(@"Just set time to %@", [self lastTimeString]);
}

#pragma mark - NSURLConnectionDataDelegate methods
- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data {
    NSLog(@"Received %lu bytes", (unsigned long)[data length]);
    if (!_incomingData) {
        _incomingData = [[NSMutableData alloc] init];
    }
    [_incomingData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"Got it all");
    NSString *string = [[NSString alloc] initWithData:_incomingData
                                             encoding:NSUTF8StringEncoding];
    _incomingData = nil;

    NSLog(@"String has %lu characters", (unsigned long)[string length]);
 }

#pragma mark - NSURLConnectionDelegate methods
- (void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"connection Failed : %@", [error localizedDescription]);
    _incomingData = nil;
}

- (void) zoneChange:(NSNotification *)n {
    NSLog(@"Time zone changed.");
}
@end
