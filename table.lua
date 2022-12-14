---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by chuckchen.
---

---table 是 Lua 的一种数据结构用来帮助我们创建不同的数据类型，如：数组、字典等。
---Lua table 使用关联型数组，你可以用任意类型的值来作数组的索引，但这个值不能是 nil。
---Lua table 是不固定大小的，你可以根据自己需要进行扩容。
---Lua也是通过table来解决模块（module）、包（package）和对象（Object）的。 例如string.format表示使用"format"来索引table string。

---table的构造
mytable = {}
mytable[1] = {"lua"}
mytable = nil ---移除引用，垃圾回收会释放内存


---table 可以将一个table赋值给另一个table，只要引用还存在，就不会被垃圾回收
mytable1 = {}
mytable1[1] = "lua"
print("mytable1", mytable1[1])

mytable2 = mytable1
print("mytable2", mytable2[1])

mytable1 = nil
print("after delete mytable1 mytable2", mytable2[1])


---table 连接
fruits = {"banana", "orange", "apple"}
print("连接后的字符串 ", table.concat(fruits))
print("连接后的字符串 ", table.concat(fruits, ","))
print("连接后的字符串", table.concat(fruits, ",", 2, 3))


---table 插入和移除
fruits = {"banana","orange","apple"}
table.insert(fruits,"mango")
print(fruits[4])

table.insert(fruits,2,"grapes")
print(fruits[2])

print("最后一个元素为 ",fruits[5])
table.remove(fruits)
print("移除后最后一个元素为 ",fruits[5])


---table 排序
fruits = {"banana","orange","apple","grapes"}
print("排序前")
for k ,v in pairs(fruits) do
    print(k, v)
end

table.sort(fruits)

print("排序后")
for k ,v in pairs(fruits) do
    print(k, v)
end

---table的长度  当我们获取 table 的长度的时候无论是使用 # 还是 table.getn
mytable3 = {1, 2, 3, foo="bar", 4}
print("# len ", #mytable3)

--自定义求长度函数
function tab_len(t)
    local len = 0
    for _, _ in pairs(t) do
        len = len+1
    end
    return len
end

print("self define function len ", tab_len(mytable3))--  table.lua 文件末尾注释