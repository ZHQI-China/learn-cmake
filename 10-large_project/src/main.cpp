#include "hello.h"
#include "hello1.h"
//#include <easyx.h>
#include <iostream>
#include <vector>
int main() {
    Hello  hello;    // 创建hello对象
    Hello1 hello1;   // 创建hello1对象
    hello.print();
    hello1.print1();

    system("pause");
    std::cout << "Hello World!\n" << std::endl;
    std::vector<int> v;
    v.push_back(1);
    return 0;
}