#include <iostream>

int main()
{
    // Multiple inputs
    // Write a program that accepts three values of type char, int and double
    // respecfully from the standard input and then print those values.
    char   a = 0;
    int    b = 0;
    double c = 0;
    std::cout << "Please enter a character, an integer and a double: ";
    std::cin >> a >> b >> c;
    std::cout << "You entered: " << a << ", " << b << ", and " << c << '\n';
}
    