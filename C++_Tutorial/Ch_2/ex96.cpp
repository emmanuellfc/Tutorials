#include <iostream>

int main()
{
    // Write a program that defines two double variables called a and 
    // b with values of 9 and 2, and then assgins a result to a int and
    // a double variable.
    double a = 9.0;
    double b = 2.0;
    int c = a / b;
    double d = a / b; 
    std::cout << "The integer division is " << c << '\n';
    std::cout << "The float(double) division is " << d << '\n';
}