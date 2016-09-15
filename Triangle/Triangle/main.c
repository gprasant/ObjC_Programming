//
//  main.c
//  Triangle
//
//  Created by Prasanth Guruprasad on 8/30/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angle1, float angle2) {
    return 180.0 - (angle1 + angle2);
}

int main(int argc, const char * argv[]) {
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %f\n", angleC);
    return 0;
}
