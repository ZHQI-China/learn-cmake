
https://www.bilibili.com/video/BV1xa4y1R7vT?p=2&vd_source=6b8be16c0d4eefbb569478c7366ab4a6

1. 进入工作目录,创建`CMakeLists.txt`,编写基本代码
```
cmake -B build # 创建build目录，
cmake --build build # 默认使用 MSVC 编译
```

2. 使用 g++ 编译
```
cmake -G "MinGW Makefiles" -B build
cmake --build build
```
3. 运行`.exe`文件
