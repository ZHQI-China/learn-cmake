project(module1)

add_library(${PROJECT_NAME} SHARED hello1.cpp)
target_include_directories(${PROJECT_NAME} PUBLIC ${module1_dir})