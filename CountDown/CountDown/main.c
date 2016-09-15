//
//  main.c
//  CountDown
//
//  Created by Prasanth Guruprasad on 9/1/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i = 99;
    do {
        printf("%d\n", i);
        if (i % 5 == 0) {
            printf("Found one. \n");
        }
        i = i - 3;
    } while (i >= 0);
    return 0;
}
