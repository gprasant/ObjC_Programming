//
//  BNRWallSafe.m
//  Appliances
//
//  Created by Prasanth Guruprasad on 10/14/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import "BNRWallSafe.h"
@interface BNRWallSafe()
{
    NSString * _secretCode;
}
@end

@implementation BNRWallSafe

- (instancetype) initWithSecretCode:(NSString *)c {
    if (self = [super init]) {
        _secretCode = c;
    }
    return self;
}

- (instancetype)init {
    [NSException raise:@"BNRWallSafeInitialization"
                format:@"Use initWithSecretCode: not init"];
    return nil;
}
@end
