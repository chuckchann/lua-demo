---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by chuckchen.
---

--- 迭代器（iterator）是一种对象，它能够用来遍历标准模板库容器中的部分或全部元素，每个迭代器对象代表容器中的确定的地址。
--- 在 Lua 中迭代器是一种支持指针类型的结构，它可以遍历集合的每一个元素。


---iterator for泛型迭代器
local tbl2 = {}
tbl2[1] = "1"
tbl2[2] = "2"
tbl2[3] = "3"
tbl2[5] = "5"

print("=============ipairs的执行结果=============")
for i, v in ipairs(tbl2) do
    print("i", "=", v)
end

print("=============pairs的执行结果=============")
for i, v in pairs(tbl2) do
    print("i", "=", v)
end

print('tbl2的长度为：', #tbl2)--长度输出为3，实际上数组中的长度是4

-- iparis与pairs的区别
-- 1.ipairs会依据key的数值从1开始加1递增（严格按照1，2，3，4，5这样递增）遍历相应的table[i]值, 如果遇到key对应的值为nil，则直接退出循环
-- 2.而pairs则能够遍历表中全部的key，而且除了迭代器本身以及遍历表本身还能够返回nil



local tbl3 = {2, s1 = "s1", s2 = "s2", s3 = "s3" }
print("=============ipairs的执行结果=============")
for k, v in ipairs(tbl3) do
    print(k, v)
end

print("=============pairs的执行结果=============")
for k, v in pairs(tbl3) do
    print(k, v)
end

print('tbl3的长度为：', #tbl3)--长度输出为1，实际上数组中的长度是3

-- 遍历table或array时，如果key是非数字，请使用pairs迭代遍历。
-- 当我们获取 table 的长度的时候无论是使用 # 还是 table.getn 其都会在索引中断的地方停止计数，而导致无法正确取得 table 的长度。