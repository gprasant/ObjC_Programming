//
//  main.m
//  objCReadline
//
//  Created by Prasanth Guruprasad on 9/8/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char str[50] = {0};
        printf("Enter your name: ");
        scanf("%s", str);
        NSString *nsstr = [NSString stringWithUTF8String:str];
        NSLog(@"%@", nsstr);
    }
    return 0;
}
