del build
cmake -G "MinGW Makefiles" -B build
cmake --build build
copy .\lib\libanimal_dynamic.dll .\build
.\build\app.exe