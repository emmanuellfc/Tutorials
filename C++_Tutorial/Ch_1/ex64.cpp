#include <iostream>

int main()
{
    // Write a program that defines three variables inside the main function.
    // The variables are of char, int and type double.
    // The names of the variables are arbitrary.
    // The initializer are arbitrary.
    // The initialization is performed using the initializer list.
    // Print the values afterwards.
    char   a;
    int    b;
    double c;
    a = 'a', b = 123, c = 3.14;
    std::cout << "The value of a is: " << a << '\n';
    std::cout << "The value of b is: " << b << '\n';
    std::cout << "The value of c is: " << c << '\n';
}