#include <iostream>
#include <Windows.h>

extern "C" int64_t my_procedure();

int main()
{
    setlocale(LC_ALL, "pl-PL");

    std::cout << "Procedura w języku Asembler zwróciła liczbę: "
        << my_procedure() << std::endl;

    return EXIT_SUCCESS;
}
