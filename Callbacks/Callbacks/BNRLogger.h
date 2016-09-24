//
//  BNRLogger.h
//  Callbacks
//
//  Created by Prasanth Guruprasad on 9/22/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}
@property (nonatomic, strong) NSDate *lastTime;
-(NSString *)lastTimeString;
-(void) updateLastTime:(NSTimer *)t;

@end
