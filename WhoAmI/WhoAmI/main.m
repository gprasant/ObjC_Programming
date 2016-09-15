//
//  main.m
//  WhoAmI
//
//  Created by Prasanth Guruprasad on 9/6/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *host = [NSHost currentHost];
        NSString *name = [host localizedName];

        NSLog(@"name: %@", name);
    }
    return 0;
}
