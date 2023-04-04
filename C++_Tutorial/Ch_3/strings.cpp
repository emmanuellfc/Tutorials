#include <iostream>
#include <string>

int main()
{
    // Defining a string
    // std::string s = "Hello World!"; // s is a string object
    // std::cout << "The value of s is: " << s << "\n"; // print

    // Concatenating strings
    // We can add a string literal to our string using the 
    // compund operator +=
    // std::string s = "Hello"; // s is a string object
    // s += " World!";          // add a string literal to s
    // std::cout << "The value of s is: " << s << "\n"; // print
    // We can add a character to our string using the 
    // operator +=
    // std::string s = "Hello"; // s is a string object
    // char c = '!';          // c is a character
    // s += c;                  // add a character to s
    // std::cout << "The value of s is: " << s << "\n"; // print

    // We can add another string to our string using the 
    // + operator. We say concatenate the strings
    // std::string s1 = "Hello";   // s1 is a string object
    // std::string s2 = " World!"; // s2 is a string object
    // std::string s3 = s1 + s2;   // concatenate s1 and s2
    // std::cout << "The value of s3 is: " << s3 << "\n"; // print

    // Accessing characters in a string
    // Individual characters of a string can ve accessed through
    // a subscript operator [], or via a member function .at(index)
    // The index starts at 0.
    // std::string s = "Hello World!"; // s is a string object
    // char c1 = s[0];                 // c1 is the first character of s
    // char c2 = s.at(0);              // c2 is the first character of s
    // char c3 = s[6];                 // c3 is the sixth character of s
    // char c4 = s.at(6);              // c4 is the sixth character of s
    // std::cout << "First character: " << c1 << "\n"; // print
    // std::cout << "First character: " << c2 << "\n"; // print
    // std::cout << "Sixth character: " << c3 << "\n"; // print
    // std::cout << "Sixth character: " << c4 << "\n"; // print

    // Comparing strings
    // We can compare string literals using the == operator
    // std::string s1 = "Hello World!"; // s1 is a string object
    // if (s1 == "Hello World!")
    // {
    //     std::cout << "The string is equal to \"Hello World!\" \n";
    // }
    // Comparing a string to another string is done using the 
    // == operator
    // std::string c1 = "Emmanuel"; // c1 is a string object
    // std::string c2 = "Jose";   // c2 is a string object
    // if (c1 == c2)
    // {
    //     std::cout << "The strings are equal. \n";
    // }
    // else
    // {
    //     std::cout << "The strings are not equal. \n";
    // }

    // String input
    // Prefered way of accepting a string from the stadard input is
    // via the std::getline function which takes std::cin and our
    // string as parameters.
    // std::string s;                    // s is a string object
    // std::cout << "Enter a string: ";  // prompt
    // std::getline(std::cin, s);        // read a string from the standard input
    // std::cout << "The string you entered is: " << s << "\n"; // print
    // // The std::getline function has the following signature: 
    // std::getline(read_from, write_to);
    // The function reads a line of text from the standar input (std::cin)
    // into a string(s) variables.

    // A pointer to a string
    // A string has a member function .c_str() which returns a pointer to its
    // first element.
    // std::string s = "Hello World!"; // s is a string object
    // std::cout << s.c_str() << "\n"; // print

    // A pointer to a string
    // To create a substring, we can use the member function .substr()
    // The signature of the function is:
    // .substring(start_index, length)
    // std::string c = "Hello World!"; // c is a string object
    // std::string mysubstring = c.substr(6, 6); // create a substring
    // std::cout << "The value of my substring is: " << mysubstring << "\n"; // print

    // Finding a substring
    // To find a substring, we use the .find() member function
    // If the substring is found, the function returns the position of the 
    // first found substring. This position is the position of the first
    // character of the substring in the string.  If the substring is not
    // found, the function returns std::string::npos
    std::string s = "This is a Hello World String."; // s is a string object
    std::string stringtofind = "Hello";              // string to find
    std::string::size_type found = s.find(stringtofind); // find the string
    if (found != std::string::npos)
    {
        std::cout << "The string was found at position: " << found << "\n";
    }
    else
    {
        std::cout << "The string was not found. \n";
    }

}