---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by chuckchen.
---

---Lua I/O 库用于读取和处理文件。分为简单模式（和C一样）、完全模式。
---简单模式（simple model）拥有一个当前输入文件和一个当前输出文件，并且提供针对这些文件相关的操作。简单模式在做一些简单的文件操作时较为合适。
---完全模式（complete model） 使用外部的文件句柄来实现。它以一种面对对象的形式，将所有的文件操作定义为文件句柄的方法。在进行一些高级的文件操作的时候，简单模式就显得力不从心。例如同时读取多个文件这样的操作，使用完全模式则较为合适。

--简单模式

-- 以只读方式打开文件
file = io.open("table.lua", "r")
-- 设置默认输入文件为 test.lua
io.input(file)
-- 输出文件第一行
print(io.read())
-- 关闭打开的文件
io.close(file)


-- 以附加的方式打开只写文件
-- 通常我们需要在同一时间处理多个文件。我们需要使用 file:function_name 来代替 io.function_name 方法。以下实例演示了如何同时处理同一个文件:
file = io.open("table.lua", "a")
-- 设置默认输出文件为 test.lua
io.output(file)
-- 在文件最后一行添加 Lua 注释
io.write("--  table.lua 文件末尾注释")
-- 关闭打开的文件
io.close(file)


--完全模式
file = io.open("table.lua", "r")
-- 输出文件第一行
print(file:read())
-- 关闭打开的文件
file:close()
-- 以附加的方式打开只写文件
file = io.open("table.lua", "a")
-- 在文件最后一行添加 Lua 注释
file:write("--test")
-- 关闭打开的文件
file:close()
