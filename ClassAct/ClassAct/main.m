//
//  main.m
//  ClassAct
//
//  Created by Prasanth Guruprasad on 10/5/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

NSArray *BNRHierarchyForClass(Class cls) {
    NSMutableArray *classHierarchy = [NSMutableArray array];

    for(Class c = cls; c != nil; c = class_getSuperclass(c)) {
        NSString *className = NSStringFromClass(c);
        [classHierarchy insertObject:className atIndex:0];
    }
    return classHierarchy;
}

NSArray *BNRMethodsForClass(Class cls) {
    unsigned int methodCount = 0;

    Method *methodList = class_copyMethodList(cls, &methodCount);
    NSMutableArray *methodArray = [NSMutableArray array];

    for (int m = 0; m < methodCount; m++) {
        Method currentMethod = methodList[m];
        SEL methodSelector = method_getName(currentMethod);
        [methodArray addObject:NSStringFromSelector(methodSelector)];
    }
    return methodArray;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *runtimeClassesInfo = [NSMutableArray array];
            // - dictionary containing className, hierarchy, methodList

        unsigned int classCount = 0;
        Class *classList = objc_copyClassList(&classCount);

        for (int i = 0; i < classCount; i++) {
            Class currentClass = classList[i];
            NSString *className = NSStringFromClass(currentClass);
            NSArray *classHierarchy = BNRHierarchyForClass(currentClass);
            NSArray *methodList     = BNRMethodsForClass(currentClass);
            NSDictionary *classInfo = @{
                                        @"className": className,
                                        @"classHierarchy": classHierarchy,
                                        @"methodList": methodList
                                        };

            [runtimeClassesInfo addObject:classInfo];
        }

        free(classList);

        NSSortDescriptor *alphaAsc = [NSSortDescriptor sortDescriptorWithKey:@"className" ascending:YES];
        NSArray *sortedArray = [runtimeClassesInfo sortedArrayUsingDescriptors: @[alphaAsc] ];
        NSLog(@"There are %lu classes registered", [sortedArray count]);
        NSLog(@"%@", sortedArray);
    }
    return 0;
}


