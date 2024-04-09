cmake_minimum_required(VERSION 3.20)

#[[
List方法
· list(APPEND <list> [<element>..]) 列表添加元素
· list(REMOVE_ITEM <list> <value> [value..]) 列表删除元素
· list(LENGTH<list><output variable>）获取列表元素个数
· list(FIND <list><value><out-var>）在列表中查找元素返回索引I
· list(INSERT <list> <index> [<element>...]) 在index位置插入
· list(REVERSE <list>) 反转list· list(SORT <list>[...]) 排序list
]]#


#创建var
set(var a1 a2 a3)
list(APPEND port p1 p2 p3)
message(${var})
message(${port})
message(-------------)
#获取长度
list(LENGTH var len)
message(${len})
message(-------------)
#查找元素下标,不存在返回-1
list(FIND var a1 index_a1)
list(FIND var a100 index_a100)
message(${index_a1})
message(${index_a100})
message(-------------)
#追加
list(APPEND port p5)
message(${port})
message(-------------)
#插入
list(INSERT port 3 p4)#在第3个位置后插入p4
message(${port})
message(-------------)

#排序
list(REVERSE port)
message(${port})
list(SORT port)
message(${port})

