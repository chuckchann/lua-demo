---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by chuckchen.
---

--lua中变量默认是全局的
print(b)
b = 10
print(b)
--如果想要删除一个全局变量 只需要将变量赋值为nil
b = nil
print(b)

---赋值语句
--a, b = 10, 2*x

---swap
--x, y = y, x
--a[i], a[j] = a[j], a[i]

---当变量个数和值的个数不一致时，Lua会一直以变量个数为基础采取以下策略：
---a. 变量个数 > 值的个数             按变量个数补足nil
---b. 变量个数 < 值的个数             多余的值会被忽略



---索引
---t[i]
---t.i 当索引为字符串时的一个简化写法
tab = {key="val"}
print(tab.key)
