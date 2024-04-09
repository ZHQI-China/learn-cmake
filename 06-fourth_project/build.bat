% rm -r build %
del build
cmake -G "MinGW Makefiles" -B build
cmake --build build
.\build\Animal.exe