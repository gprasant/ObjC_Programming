//
//  main.m
//  BMITime
//
//  Created by Prasanth Guruprasad on 9/15/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray<BNRPerson *> *people = [NSMutableArray array];
        BNRPerson *mikey = [BNRPerson new];
        [mikey setHeightInMeters:1.0];
        [people addObject:mikey];

        mikey = [BNRPerson new];
        [mikey setHeightInMeters:0.9];
        [people addObject:mikey];

        mikey = [BNRPerson new];
        [mikey setHeightInMeters:1.2];
        [people addObject:mikey];

        NSSortDescriptor *hSort = [NSSortDescriptor sortDescriptorWithKey:@"heightInMeters" ascending:YES];
        [people sortUsingDescriptors:@[hSort]];
//        for (BNRPerson *p in people) {
//            NSLog(@"<Height: %f>", p.heightInMeters);
//        }

        NSPredicate *gt_1M = [NSPredicate predicateWithFormat:@"heightInMeters > 1.0"];
        NSArray *tallFolks = [people filteredArrayUsingPredicate:gt_1M];
        for (BNRPerson *p in tallFolks) {
            NSLog(@"<Height: %f>", p.heightInMeters);
        }
    }
    return 0;
}
