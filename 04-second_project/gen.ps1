remove-item build -Recurse
Write-host "[info] delete build dir"

cmake -G "MinGW Makefiles" -B build
cmake --build build
Write-host "[info] cmake build"

if (Test-Path build/Animal.exe) {
   Start-Process build/Animal.exe
}