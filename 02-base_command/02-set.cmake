cmake_minimum_required(VERSION 3.20)
# 设置单个变量
set(var just_var)
message(${var})
message(-------------)
# 设置多个变量
set(list_var var1 var2 var3)
set(list_var1 var1;var2;var3)#不会显示分号
message(${list_var})
message(${list_var1})
message(-------------)

# 打印系统环境变量
message($ENV{PATH})
message(-------------)
# 设置环境变量 ENV
set(ENV{GXX} "g++")
message($ENV{GXX})

# 取消变量
unset(ENV{GXX})
if(DEFINED ENV{GXX})
    message("GXX is defined")
else()
    message("GXX is not defined")
endif()

# cmake -P 02-set.cmake