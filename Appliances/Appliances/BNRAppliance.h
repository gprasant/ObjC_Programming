//
//  BNRAppliance.h
//  Appliances
//
//  Created by Prasanth Guruprasad on 10/10/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject
@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;
// designated initializer
- (instancetype) initWithProductName: (NSString *)pn;
@end
