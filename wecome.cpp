//Kevin Lam

//Your cwid: 1097

//Your section number: 240-3

//kevinlawc@csu.fullerton.edu

//April 23

//Identifier: Final program.

//-----------------CODE---------------------------

#include <stdio.h>

extern "C" long getqword(unsigned long address);

int main() {
    printf("Welcome to getqwords test program developed by Sandy Richardson.\n");

    unsigned long address;
    printf("The address of -17 is 470558\n");
    printf("Please enter an address in hex: ");
    scanf("%lx", &address);

    // Call getqword function to retrieve value at address
    long result = getqword(address);

    // Print the result
    printf("The integer at that address is %lx\n", result);
    printf("Function getqword has finished. A number will be returned to the driver.\n");
    printf("The driver received %ld\n", result);

    printf("A zero will be sent to the OS. Bye.\n");

    return 0;
}
