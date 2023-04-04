#include <iostream>

int main()
{
    // Two inputs
    // Write a program that accepts two integer numbers from the standard input
    // and then print those numbers.
    int x = 0;
    int y = 0;
    std::cout << "Please enter two numbers separated by a space and press ENTER: ";
    std::cin >> x >> y;
    std::cout << "You entered: " << x << " and " << y << '\n';
}