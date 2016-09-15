//
//  main.m
//  WordsAndNames
//
//  Created by Prasanth Guruprasad on 9/8/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // read names
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        // read words
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        int i = 0;
        for (NSString *n in names) {
            NSString *lowerCaseName = [n lowercaseString];
            NSUInteger wordsCount = [words count];

            for (; i < wordsCount; i++) {
                NSString *w = words[i];
                NSComparisonResult res = [lowerCaseName localizedCompare:w];
                if (res == NSOrderedSame) {
                    NSLog(@"Name: %@ matches with word %@", n, w);
                    break;
                }
            }
        }

    }
    return 0;
}
