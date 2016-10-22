//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by Prasanth Guruprasad on 10/14/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import "BNROwnedAppliance.h"
@interface BNROwnedAppliance()
{
    NSMutableSet *_owners;
}
@end

@implementation BNROwnedAppliance

- (instancetype) initWithProductName:(NSString *)pn {
    return [self initWithProductName:pn firstOwner:nil];
}

- (instancetype) initWithProductName:(NSString *)pn firstOwner:(NSString *)n {
    if (self = [super initWithProductName:pn]) {
        if (n.length > 0) {
            _owners = [[NSMutableSet alloc] init];
            [_owners addObject:n];
        }
    }
    return self;
}

- (void) addOwner:(NSString *)n {
    [_owners addObject:n];
}

- (void) removeOwner:(NSString *)n {
    [_owners removeObject:n];
}

- (NSSet *) owners {
    return [_owners copy];
}
@end
