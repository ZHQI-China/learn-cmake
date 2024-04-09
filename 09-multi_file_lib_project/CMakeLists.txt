cmake_minimum_required(VERSION 3.24.1)
project(test 
    LANGUAGES CXX
    VERSION 1.0.0
    DESCRIPTION "test"
)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin) # windows下 设置可执行文件输出目录(exe,dll)
# linux 动态库 CMAKE_LIBRARY_OUTPUT_DIRECTORY
# linux 动态库 CMAKE_ARCHIVE_OUTPUT_DIRECTORY


aux_source_directory(src SRC_LISTS) # 获取当前目录下的所有源文件
message("SRC_LISTS: ${SRC_LISTS}")

# 创建动态库
add_library(hello
SHARED
${SRC_LISTS}
)

# 添加头文件
target_include_directories(hello 
PUBLIC 
${PROJECT_SOURCE_DIR}/include
)

# 添加可执行文件
add_executable(test1 main.cpp)

# 添加头文件
target_include_directories(test1 
PUBLIC 
${PROJECT_SOURCE_DIR}/include
)
# 链接动态库
target_link_libraries(test1
PUBLIC
hello)