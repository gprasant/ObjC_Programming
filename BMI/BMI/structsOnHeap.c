//
//  structsOnHeap.c
//  BMI
//
//  Created by Prasanth Guruprasad on 9/6/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#include "structsOnHeap.h"
#include "stdlib.h"

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person *p) {
    return p->weightInKilos / (p->heightInMeters * p->heightInMeters);
}

void makeStructOnHeap() {
    Person *mikey = (Person *)malloc(sizeof(Person));
    mikey->weightInKilos = 96;
    mikey->heightInMeters = 1.7;

    float mikeyBMI = bodyMassIndex(mikey);
    printf("Mikey has a BMI of %f.\n", mikeyBMI);

    // recycle mikey
    free(mikey);
    // forget where it was
    mikey = NULL;
}