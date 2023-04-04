#include <iostream>

int main()
{
    // A reference type is an alias to an existing object in memory
    // References must be initialized

    // int x = 123;
    // int& y = x;
    // std::cout << "The value of x is: " << y << "\n";

    // I f we assign a different velue to either one of them, they
    // both change as we have one object in memory, but we are using 
    // two different names:
    // int  x = 123; // declare an integer variable x
    // int& y = x;   // y is a reference to x
    // std::cout << "The value of y is: " << y << "\n"; // print
    // x = 456;      // change the value of x
    // std::cout << "The value of y is: " << y << "\n"; // print

    // Another concept is const-reference, which is a read-only
    // alias to some object.
    int        x = 123; // declare an integer variable x
    const int& y = x;   // y is a const-reference to x
    x = 456;            // change the value of x
    std::cout << "The value of y is: " << y << "\n"; // print

}