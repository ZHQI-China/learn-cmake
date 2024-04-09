project(main)
add_subdirectory(module0)
add_subdirectory(module1)

add_executable(${PROJECT_NAME} main.cpp)

# 包含头文件module0
target_link_directories(${PROJECT_NAME} PUBLIC module0_dir)
# 包含头文件module1
target_link_directories(${PROJECT_NAME} PUBLIC module1_dir)
# 链接库module0
target_link_libraries(${PROJECT_NAME} PUBLIC module0)
# 链接库module1
target_link_libraries(${PROJECT_NAME} PUBLIC module1)
