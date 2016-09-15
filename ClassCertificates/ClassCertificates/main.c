//
//  main.c
//  ClassCertificates
//
//  Created by Prasanth Guruprasad on 8/28/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>

void congratulateStudent(char *name, char *subject, int numDays);

int main(int argc, const char * argv[]) {
    congratulateStudent("Kate", "Cocoa", 5);
    sleep(2);
    congratulateStudent("Bo", "Obj-C", 2);
    sleep(2);
    congratulateStudent("Mike", "Python", 5);
    sleep(2);
    congratulateStudent("Liss", "iOS", 5);
    return 0;
}

void congratulateStudent(char *name, char *subject, int numDays) {
    printf("%s has done as much %s programming as I could fit into %d days.\n",
           name,                subject,                         numDays);

}
