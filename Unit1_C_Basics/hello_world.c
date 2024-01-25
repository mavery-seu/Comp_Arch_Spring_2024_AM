// Megan Avery

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define NUMBER 5

int main(int argc, char* argv[]) {
    printf("Hello World!\n");
    printf("🥳\n");
    printf("%d) option %s", 1, "one");

    // statically typed
    

    for (int x = 0; x < NUMBER; x++) {
        // do something
    }

    int whole_number = 6;
    int* whole_number_pointer = &whole_number;

    *whole_number_pointer = 46;
    printf("\n%d", whole_number);
    printf("\n%d", *whole_number_pointer);
    printf("\n\n%p", whole_number_pointer);

    whole_number_pointer += 1;

    printf("\n%p", whole_number_pointer);

    int* int_pointer = 
            (int*) malloc(sizeof(int));
    printf("\n%d", *int_pointer);

    double* double_pointer =
            (double*) malloc(sizeof(double));
    *double_pointer = 102.45;
    printf("\n%lf", *double_pointer);

    int* bad_pointer = (int*) 4;
    printf("\n%d", *bad_pointer);

    char phrase[20];

    int* int_array = calloc(4, sizeof(int));
    

    return 0; // no errors
}