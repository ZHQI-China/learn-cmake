cmake_minimum_required(VERSION 3.24.1)
project(test 
LANGUAGES CXX
VERSION 1.0.0
DESCRIPTION "test"
)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
add_executable(test1 src/main.cpp)