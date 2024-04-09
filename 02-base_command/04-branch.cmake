cmake_minimum_required(VERSION 3.20)

# set(CMAKE_BRANCH_NAME "main")

if(NOT DEFINED CMAKE_BRANCH_NAME)
    message(#[[FATAL_ERROR]] "CMAKE_BRANCH_NAME is not defined")
else()
    message(STATUS "CMAKE_BRANCH_NAME: ${CMAKE_BRANCH_NAME}")
endif()

# TRUE LESS
if(1 EQUAL "1")
    message(STATUS "1 EQUAL 1")
endif()

# cmake -P .\04-branch.cmake
