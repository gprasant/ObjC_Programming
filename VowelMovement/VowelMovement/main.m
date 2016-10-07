//
//  main.m
//  VowelMovement
//
//  Created by Prasanth Guruprasad on 9/27/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock) (id, NSUInteger, BOOL *);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *originalStrings = @[
                                     @"Sauerkraut",
                                     @"Raygun",
                                     @"Big nerd ranch",
                                     @"Mississippi"
                                     ];

        NSMutableArray *deVowelisedStrings = [NSMutableArray array];

        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];

//        void (^devowelizer) (id, NSUInteger, BOOL *);

        //[originalStrings enumerateObjectsUsingBlock:devowelizer];
        [originalStrings enumerateObjectsUsingBlock:^(id  _Nonnull string, NSUInteger i, BOOL * _Nonnull stop) {
            // did I find Y?
            NSRange yRange = [string rangeOfString:@"y" options:NSCaseInsensitiveSearch];
            // If Y, stop Iterating
            if (yRange.location != NSNotFound) {
                *stop = YES;
                return;
            }


            NSMutableString *newString = [NSMutableString stringWithString: string];

            // Iterate over vowels and replace instances with @""
            for (NSString *v in vowels) {
                NSRange range = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:v
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:range];
            }
            [deVowelisedStrings addObject:newString];

        }];
        NSLog(@"devowelized Strings: %@", deVowelisedStrings);
    }
    return 0;
}

void someFunction() {
    double (^divBlock)(double, double);
    divBlock = ^(double dividend, double divisor) {
        return dividend / divisor;
    };

    double myQ = divBlock(4.0, 2.0);
}
