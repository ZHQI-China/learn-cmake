del build
cmake -G "MinGW Makefiles" -B build
cmake --build build

set target_dir=.\build
.\build\*.exe

for %%i in ("%target_dir%\*.exe") do (
    start "" %%i"
)
