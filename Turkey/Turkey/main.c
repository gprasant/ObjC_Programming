//
//  main.c
//  Turkey
//
//  Created by Prasanth Guruprasad on 8/28/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

void challenge() {
    float f1, f2;
    f1 = 20.5;
    f2 = 40.2;
    double sum;

    sum = f1 + f2;

    printf("The sum is %f ", sum);
}

int main(int argc, const char * argv[]) {
    challenge();
//    float weight;
//    weight = 14.2;
//
//    printf("The turkey weighs %f pounds\n", weight);
//
//    float cookingTime;
//    cookingTime = 15.0 + 15.0 * weight;
//    printf("The cooking time is %f\n", cookingTime);

    return 0;
}
