#include <iostream>

int main()
{
    // Obects reside in memory and one way to acced an
    // object in memory in through pointers.
    // Each object in memory has its type and an address
    // This allow us to acedd the object through a pointer.
    // A pointer is a variable that holds the address of an object
    // int* p; // we say that p is of type int*
    // char* p; // we say that p is of type char*

    // Now declare an int and point to it
    // int  x = 123; // declare an integer variable x
    // int* p = &x;  // p points to x 
    // char c = 'A'; // declare a char variable c
    // char* p= &c;  // p points to c

    // To initialize a pointer that does not point to anything
    // we use the nullptr keyword
    // char* p = nullptr; // p does not point to anything 

    // Pointers are variables/objects, just like any other type
    // of object.
    // Their value is the adress of an object, a memory location
    // where the object is stored.
    // To access a value stored in an object pointed to by a pointer
    // we need to dereference a pointer.
    // Dereferencing is done by prepending a pointer(variable) name
    // wth a dereference operator *:

    // char  c = 'A'; // declare a char variable c
    // char* p = &c;  // p points to c
    // char  d = *p;  // d is the value of c
    
    // std::cout << "The value of the dereferenced pointer is: " << d << " \n"; // print

    // Now for an integer
    // int  x = 13; // declare an integer variable x
    // int* p = &x; // p points to x
    // std::cout << "The value of the dereferenced pointer is: " << *p << "\n"; // print

    // We can change the value of the pointed-to object
    // by a dereferenced pointer
    int  x = 123; // declare an integer variable x
    int* p = &x;  // p points to x
    *p = 456;     // change the value of x
    std::cout << " The value of x is: " << x << "\n"; // print
}