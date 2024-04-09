% rm -r build %
del build
del lib
cmake -G "MinGW Makefiles" -B build
cmake --build build