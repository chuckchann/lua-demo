---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by chuckchen.
---

--- Lua 提供了 debug 库用于提供创建我们自定义调试器的功能。Lua 本身并未有内置的调试器，但很多开发者共享了他们的 Lua 调试器代码。

function myfunction ()
    print(debug.traceback("Stack trace"))
    print(debug.getinfo(1))
    print("Stack trace end")
    return 10
end
myfunction ()
print(debug.getinfo(1))
