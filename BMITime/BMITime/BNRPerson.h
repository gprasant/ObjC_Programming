//
//  BNRPerson.h
//  BMITime
//
//  Created by Prasanth Guruprasad on 9/15/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

{
    float _heightInMeters;
    int _weightInKilos;
}

// Setter and getter methods
-(float) heightInMeters;
-(void) setHeightInMeters:(float)h;
-(int) weightInKilos;
-(void) setWeightInKilos:(int)w;

// Public methods
-(float) bodyMassIndex;

@end
