//
//  main.c
//  Addresses
//
//  Created by Prasanth Guruprasad on 9/1/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

float estimatedGravity() { return 9.8; }

int main(int argc, const char * argv[]) {
    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p.\n", addressOfI);
    printf("This function starts at %p.\n", main);
    printf("The int stored at addressOfI is %d.\n", *addressOfI);

    *addressOfI = 89;
    printf("Now, the int stored at addressOfI is %d.\n", i);

    printf("An int is %zu bytes long.\n", sizeof(i));
    printf("An int ptr is %zu bytes long.\n", sizeof(addressOfI));

    /**
     *  NULL
     */
    float *measuredGravityPtr = NULL;

    // Some code that might set the measuredGravityPtr to non-NULL

    float actualGravity;

    // Did we set the gravity?
    if (measuredGravityPtr) {
        actualGravity = *measuredGravityPtr;
    } else {
        actualGravity = estimatedGravity();
    }

    printf("A float is %zu bytes long.\n", sizeof(float));

    return 0;
}
