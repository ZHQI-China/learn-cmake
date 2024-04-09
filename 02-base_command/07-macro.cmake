cmake_minimum_required(VERSION 3.20)
macro(Test val0)
    set(val0 "change in macro")
endmacro()

set(val0 "val0")
message("val0: ${val0}")
Test(${val0})
message("val0: ${val0}")