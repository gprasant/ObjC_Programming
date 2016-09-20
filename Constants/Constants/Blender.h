//
//  Blender.h
//  Constants
//
//  Created by Prasanth Guruprasad on 9/20/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(char, BlenderSpeed) {
    BlenderSpeedStir,
    BlenderSpeedChop,
    BlenderSpeedLiquify,
    BlenderSpeedPulse,
    BlenderSpeedIceCrush
};

@interface Blender : NSObject
{
    BlenderSpeed speed;
}

-(void) setSpeed: (BlenderSpeed) x;

@end
