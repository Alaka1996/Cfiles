#include <stdio.h>
#include "utils.h"

int main() {
    printf("Hello from main\n");
    int result = add(5, 3);
    printf("The result of 5 + 3 is: %d\n", result);
    return 0;
}
