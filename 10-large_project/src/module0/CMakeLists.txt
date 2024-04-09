project(module0)

add_library(${PROJECT_NAME} SHARED hello.cpp)
target_include_directories(${PROJECT_NAME} PUBLIC ${module0_dir})
