//
//  main.c
//  Numbers
//
//  Created by Prasanth Guruprasad on 9/1/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <objc/NSObjCRuntime.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    // Printing integers
    int x = 255;
    printf("x is %d.\n", x);
    printf("In octal x is %o.\n",x);
    printf("In hex x is %x.\n",x);

    // Printing long integers
    long x1 = 255;
    printf("x1 is %ld.\n", x1);
    printf("In octal, x1 is %lo.\n", x1);
    printf("In hex, x1 is %lx.\n", x1);

    NSInteger n1 = -5;
    NSUInteger n2 = 6;
    printf("Here they are : %ld, %lu.\n", (long)n1, (long)n2);

    printf("The absolute value of -5 is %d.\n", abs(-5));

    // Calculate sine of 1 radian.
    double sin_1 = sin(1.0);
    printf("sin(1) is %.3f.\n", sin_1);
    return 0;
}
