cmake_minimum_required(VERSION 3.20)

# 作用域的概念与 C++ 一致
function(func_name arg1)
    message("func name: " ${CMAKE_CURRENT_FUNCTION})
    message("arg1: " ${arg1})

    set(arg1 "arg10000")
    message("new arg1: " ${arg1})

    message("ARGV0: " ${ARGV0}) # 捕获参数
    message("ARGV1: " ${ARGV1})
    message("ARGV2: " ${ARGV2})
    message("ARGV3: " ${ARGV3})
endfunction()

set(val "val")
func_name(${val} test1 test2)