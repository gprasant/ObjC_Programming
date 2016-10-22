//
//  main.m
//  Appliances
//
//  Created by Prasanth Guruprasad on 10/10/16.
//  Copyright © 2016 Codepath. All rights reserved.
//
#import "BNRAppliance.h"
#import "BNRWallSafe.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BNRAppliance *a = [[BNRAppliance alloc] init];
        NSLog(@"a is %@", a);
        [a setProductName:@"Washing Machine"];
        [a setVoltage:240];
        NSLog(@"a is %@", a);
        BNRWallSafe *safe = [[BNRWallSafe alloc] initWithSecretCode:@"3624"];
        BNRWallSafe *unsafe = [[BNRWallSafe alloc] init];
    }
    return 0;
}
