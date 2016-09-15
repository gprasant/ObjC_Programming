//
//  main.c
//  BMI
//
//  Created by Prasanth Guruprasad on 9/6/16.
//  Copyright © 2016 Codepath. All rights reserved.
//

#include <stdio.h>
#include <time.h>

typedef struct{
    float heightInMeters;
    int weightInKilograms;
} Person;

float bodyMassIndex(Person p) {
    return p.weightInKilograms / (p.heightInMeters * p.heightInMeters);
}


int main(int argc, const char * argv[]) {
    Person mikey;
    mikey.heightInMeters = 1.7;
    mikey.weightInKilograms = 96;

    Person aaron;
    aaron.heightInMeters = 1.97;
    aaron.weightInKilograms = 84;

    float bmi;
    bmi = bodyMassIndex(mikey);
    printf("mikey has a bmi of %.2f.\n", bmi);

    bmi = bodyMassIndex(aaron);
    printf("aaron has a bmi of %.2f.\n", bmi);

    /**
     *  Challenge: Display the date in 4 Million seconds
     */
    long secondsSince1970 = time(NULL);
    struct tm futureTm;
    long futureSeconds = secondsSince1970 + 4000000;
    localtime_r(&futureSeconds, &futureTm);
    printf("4 million seconds later the date is: %d-%d-%d.\n", futureTm.tm_mon + 1,
           futureTm.tm_mday,
           futureTm.tm_year + 1900);
    return 0;
}
