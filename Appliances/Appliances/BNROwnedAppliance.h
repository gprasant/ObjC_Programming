//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by Prasanth Guruprasad on 10/14/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance
@property (readonly) NSSet *owners;

- (void)addOwner: (NSString *)n;
- (void)removeOwner: (NSString *)n;
- (instancetype) initWithProductName:(NSString *)pn
                          firstOwner: (NSString *)n;
@end
