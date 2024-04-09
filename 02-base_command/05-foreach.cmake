cmake_minimum_required(VERSION 3.20)
foreach(a RANGE 3) # 默认从0开始
    message(STATUS "a: ${a}")
endforeach()
message(------------)

foreach(b RANGE 1 3)
    message(STATUS "b: ${b}")
endforeach()
message(------------)

set(my_list 1 2 3)
foreach(var IN LISTS my_list ITEMS append1 append2)
    message(${var})
endforeach()
message(------------)

set(l1 1 2 3)
set(l2 one two three four)
foreach(num IN ZIP_LISTS l1 l2)
    message("first: ${num_0}, second: ${num_1}")
endforeach()

# cmake -P .\05-foreach.cmake