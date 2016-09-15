//
//  main.c
//  Degrees
//
//  Created by Prasanth Guruprasad on 8/30/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include "stdlib.h"

static float lastTemperature;

float ctof(float c) {
    lastTemperature = c;
    float f = 1.8 * c + 32.0;
    printf("%f Celcius is %f Fahrenheit.\n", c, f);
    return f;
}

int main(int argc, const char * argv[]) {
    float freezeInCel = 0.0;
    float freezeInFar = ctof(freezeInCel);
    printf("Water freezes at %f degrees fahrenheit.\n", freezeInFar);
    printf("The last temperature that was converted was %f", lastTemperature);
    return EXIT_SUCCESS;
}
