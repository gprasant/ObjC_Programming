//
//  main.c
//  Coolness
//
//  Created by Prasanth Guruprasad on 9/1/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <readline/readline.h>

int main(int argc, const char * argv[]) {
    printf("Who is cool? ");
    const char *name = readline(NULL);
    printf("%s is cool!", name);
    return 0;
}
