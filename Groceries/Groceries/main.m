//
//  main.m
//  Groceries
//
//  Created by Prasanth Guruprasad on 9/8/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *groceryList = [NSMutableArray array];

        [groceryList addObject:@"container of milk"];
        [groceryList addObject:@"loaf of bread"];
        [groceryList addObject:@"stick of butter"];

        NSLog(@"My grocery list contains:");
        for (NSString *item in groceryList) {
            NSLog(@"%@", item);
        }
    }
    return 0;
}
