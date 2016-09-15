//
//  main.c
//  BeerSong
//
//  Created by Prasanth Guruprasad on 8/30/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

void singSongFor(int numberOfBottles) {
    if (numberOfBottles == 0) {
        printf("There are simply no more bottles of beer on the wall.\n\n");
    } else {
        printf("%d bottles of beer on the wall. %d bottles of beer.\n", numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("Take one down. Pass it around. %d bottles of beer on the wall.\n", oneFewer);
        singSongFor(oneFewer);
        printf("Put a bottle in recycling. %d empty bottles in the bin.\n", numberOfBottles);
    }
}

int main(int argc, const char * argv[]) {
    singSongFor(4);
    return 0;
}
