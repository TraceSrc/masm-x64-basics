#include <iostream>
#include <Windows.h>

using MyProcedure = int64_t(*)();

int main()
{
    HMODULE hLibrary = LoadLibrary(TEXT("hybrid_msvcpp_masm_02.dll"));
    if (hLibrary == NULL) return EXIT_FAILURE;

    auto MyProc = reinterpret_cast<MyProcedure>(
        GetProcAddress(hLibrary, "my_procedure")
        );

    setlocale(LC_ALL, "pl-PL");

    std::cout << "Procedura w języku Asembler zwróciła liczbę: "
        << MyProc() << std::endl;

    return EXIT_SUCCESS;
}
