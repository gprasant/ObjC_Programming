//
//  main.c
//  PBR
//
//  Created by Prasanth Guruprasad on 9/5/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr) {
    // assumes meters is non negative.

    // calculate rawFeet
    double rawFeet = meters * 3.281;
    double feetIntegerPart;
    double feetFractionalPart;
    feetFractionalPart = modf(rawFeet, &feetIntegerPart);
    // calculate Feet
    if (ftPtr) {
        printf("Assigning %u to address %p.\n", (unsigned int)feetIntegerPart, ftPtr);
        *ftPtr = (unsigned int)feetIntegerPart;
    }
    // calculate inches
    double inches = feetFractionalPart * 12.0;
    if (inPtr) {
        printf("Assigning %.2f to %p.\n", inches, inPtr);
        *inPtr = inches;
    }
}

int main(int argc, const char * argv[]) {
    double pi = 3.14;
    double integerPart;
    double fractionPart;

    fractionPart = modf(pi, &integerPart);
    printf("integerPart = %.0f. fractionPart = %.2f\n", integerPart, fractionPart);

    unsigned int feet;
    double inches;
    metersToFeetAndInches(3.0, &feet, &inches);
    printf("3.0 m = %u ft %.2f in.\n", feet, inches);
    return 0;
}
