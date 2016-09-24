//
//  main.m
//  ImageFetch
//
//  Created by Prasanth Guruprasad on 9/22/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:NULL error:&error];

        if (error) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            return 1;
        }

        BOOL written = [data writeToFile:@"/tmp/google.png" options:NSDataWritingAtomic error:&error];

        if (!written) {
            NSLog(@"Write failed. error: %@", [error localizedDescription]);
        }
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        NSLog(@"readData has %lu bytes.", (unsigned long)[readData length]);
        NSLog(@"Success");

        // Lets see if we can get the Desktop directory.
        NSArray *desktopPaths = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, NO);
        NSLog(@"Desktop Path : %@", desktopPaths[0]);
        NSArray *trashPaths = NSSearchPathForDirectoriesInDomains(NSTrashDirectory, NSUserDomainMask, NO);
        NSLog(@"trash path : %@", trashPaths[0]);
    }
    return 0;
}
