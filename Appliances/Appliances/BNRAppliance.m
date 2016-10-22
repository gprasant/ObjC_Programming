//
//  BNRAppliance.m
//  Appliances
//
//  Created by Prasanth Guruprasad on 10/10/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

- (instancetype) init {
    return [self initWithProductName:@"Unknown"];
}

- (instancetype) initWithProductName:(NSString *)pn {
    if (self = [super init]) {
        _voltage = 120;
        _productName = [pn copy];
    }
    return self;
}


- (NSString *) description {
    return [NSString stringWithFormat:@"<%@: %d volts>", self.productName, self.voltage];
}

@end
