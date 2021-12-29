/* Simple crackme program */
#include <iostream>

namespace crack_me
{
    bool check_password(std::string password)
    {
        return password == "1234";
    }
}

int main()
{
    std::string password;
  
    std::cout << "Enter the password: ";
    std::cin >> password;
  
    if(crack_me::check_password(password))
    {
        std::cout << "Good password. Opening..."
          << std::endl;
    }
    else
    {
        std::cout << "Wrong password. Try again."
          << std::endl;
    }
  
    return EXIT_SUCCESS;
}
