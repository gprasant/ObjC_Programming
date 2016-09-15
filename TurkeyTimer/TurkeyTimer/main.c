//
//  main.c
//  TurkeyTimer
//
//  Created by Prasanth Guruprasad on 8/28/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

void showCookTimeForTurkey(int pounds) {
    int cookingTime = 15 + 15 * pounds;
    printf("Cook for %d minutes.\n", cookingTime);
    if (cookingTime > 120) {
        int halfway = cookingTime / 2;
        printf("Rotate after %d of the %d minutes", halfway, cookingTime);
    }
}

int main(int argc, const char * argv[]) {
    int totalWeight = 10;
    int gibletWeight = 1;
    int turkeyWeight = totalWeight - gibletWeight;

    showCookTimeForTurkey(turkeyWeight);
    return 0;
}
