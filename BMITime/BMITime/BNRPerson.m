//
//  BNRPerson.m
//  BMITime
//
//  Created by Prasanth Guruprasad on 9/15/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

-(float) heightInMeters {
    return _heightInMeters;
}

-(void) setHeightInMeters:(float)h {
    _heightInMeters = h;
}

-(int) weightInKilos {
    return _weightInKilos;
}

-(void) setWeightInKilos:(int)w {
    _weightInKilos = w;
}

-(float) bodyMassIndex {
    return _weightInKilos / (_heightInMeters * _heightInMeters);
}

@end
