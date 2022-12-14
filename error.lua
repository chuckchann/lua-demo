---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by chuckchen.
---

--- 程序运行中错误处理是必要的，在我们进行文件操作，数据转移及web service 调用过程中都会出现不可预期的错误。如果不注重错误信息的处理，就会造成信息泄露，程序无法运行等情况。
--- 任何程序语言中，都需要错误处理。错误类型有：
---     语法错误
---     运行错误

-- 语法错误
--a == 2

--for a = 1, 10
--    print(a)
--end


-- 运行错误
--function add(a, b)
--    return a + b
--end
--add(10) -- runtime error


-- 错误处理 我们可以使用两个函数：assert 和 error 来处理错误。
--[[
local function add(a, b)
    assert(type(a) == "number", "a不是一个数字")
    assert(type(b) == "number", "b不是一个数字")
    return a+b
end
add(10)



-- error 终止程序 输出详细信息
--[[
local function foo()
    print(1)
    error("foo 终止", 2)
    print(2)
end
foo()
 --]]

-- Lua中处理错误，可以使用函数pcall（protected call）来包装需要执行的代码。
-- pcall接收一个函数和要传递给后者的参数，并执行，执行结果：有错误、无错误；返回值true或者或false, errorinfo。
pcall(function(i)
    print(1)
end, 33)

pcall(function(a, b)
    print(a, b)
    error('error..') end, 33)

-- pcall以一种"保护模式"来调用第一个参数，因此pcall可以捕获函数执行中的任何错误。通常在错误发生时，希望落得更多的调试信息，而不只是发生错误的位置。但pcall返回时，它已经销毁了调用桟的部分内容。
-- Lua提供了xpcall函数，xpcall接收第二个参数——一个错误处理函数，当错误发生时，Lua会在调用桟展开（unwind）前调用错误处理函数，于是就可以在这个函数中使用debug库来获取关于错误的额外信息了。
xpcall(function(i)
    print(i)
    error('error..')
end,
        function()
            print(debug.traceback())
        end, 33)