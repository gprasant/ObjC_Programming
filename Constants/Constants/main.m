//
//  main.m
//  Constants
//
//  Created by Prasanth Guruprasad on 9/19/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\u03c0 is %f", M_PI);
        NSLocale *here = [NSLocale currentLocale];
        NSLog(@"Currency is %@", [here objectForKey:NSLocaleCurrencyCode]);
    }
    return 0;
}
