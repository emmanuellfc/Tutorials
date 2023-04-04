#include <iostream>

int main()
{
    // We can automatically deduce the type of an object 
    // using the auto specifier.
    // Tha auto specifier deduces the type of an object 
    // based on the object's initializer type.
    auto c  = 'a'; // c is a char
    auto b  = 123; // x is an int
    auto d = 123.456 / 789.10; // d is a double

    // We can also use auto as part of the reference type.
    int x = 123; // x is an int
    auto& y = x; // y is of int& type

    // We use the auto specifier when the type is hard to 
    // deduce manually or cumbersome to type due to the length.
}