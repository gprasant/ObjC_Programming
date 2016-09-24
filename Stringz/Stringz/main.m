//
//  main.m
//  Stringz
//
//  Created by Prasanth Guruprasad on 9/20/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        NSMutableString *str = [[NSMutableString alloc] init];
//        for (int i = 0; i < 10; i ++) {
//            [str appendString:@"Prasanth is cool\n"];
//        }
//        NSError *err;
//        BOOL success = [str writeToFile:@"/too/darned/bad.txt"
//              atomically:YES
//                encoding:NSUTF8StringEncoding
//                   error:&err];
//        if (success) {
//            NSLog(@"done writing /tmp/cool.txt");
//        } else {
//            NSLog(@"writing /tmp/cool.txt failed: %@", [err localizedDescription]);
//        }
//
//    }
    @autoreleasepool {
        NSError *error;
        NSString *str = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf"
                                                        encoding:NSASCIIStringEncoding
                                                           error:&error];
        if (!str) {
            NSLog(@"read failed: %@", [error localizedDescription]);
        } else {
            NSLog(@"resolv.conf looks like this: %@", str);
        }
    }
    return 0;
}
