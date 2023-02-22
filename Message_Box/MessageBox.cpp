#include <Windows.h>

int main()
{
    int return_code = MessageBox(NULL,
                                 (LPTSTR)"My first API call",
                                 (LPTSTR)"Hello World",
                                 MB_ICONWARNING|MB_YESNOCANCEL);
    return return_code;
}