#include <iostream>

int main()
{
    // Write a program that defines an int variable called x with a value of 123,
    // post-increments x by 1, and then adds 20 to x. Finally, print the value of x.
    int x = 123;       // Declaring variable x as integer and assigning value 123
        x ++   ;       // The same as x = x + x
        x += 20;       // The same as x = x + 20
    std::cout << "The value of x is: " << x << '\n';
}