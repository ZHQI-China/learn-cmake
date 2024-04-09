cmake_minimum_required(VERSION 3.24.1)
project(test 
    LANGUAGES CXX
    VERSION 1.0.0
    DESCRIPTION "demo"
    HOMEPAGE_URL "https://github.com/ZHQI-China/learn-cmake"
)

set(CMAKE_CXX_STANDARD 17) # 设置c++标准
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(ROOT_PATH ${PROJECT_SOURCE_DIR})

set(CMAKE_EXPORT_COMPILE_COMMANDS True) # 生成compile_commands.json

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${ROOT_PATH}/bin) # windows下 设置可执行文件输出目录(exe,dll)----设置后子目录可用
# 设置模块路径变量
set(module0_dir ${ROOT_PATH}/src/module0)
set(module1_dir ${ROOT_PATH}/src/module1)

# 设置第三方库 easyx 路径
set(easyx_include_dir ${ROOT_PATH}/3rdparty/easyx/include)
set(easyx_lib_dir ${ROOT_PATH}/3rdparty/easyx/lib)
set(easyx_lib_name easyx)

add_subdirectory(src) # 添加子目录