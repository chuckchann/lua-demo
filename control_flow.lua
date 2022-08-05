---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by chuckchen.
---


--- if 控制流
--[[
    if(布尔表达式)
    then
       --[ 在布尔表达式为 true 时执行的语句 --]
    end
--]]
if (0)
then
    print("0 is true")
end


--- if...else 控制流
--[[
    if(布尔表达式)
    then
       --[ 布尔表达式为 true 时执行该语句块 --]
    else
       --[ 布尔表达式为 false 时执行该语句块 --]
    end
--]]

function max(x, y)
    if x > y
    then
        return x
    else
        return y
    end
end

print(max(1, 2))


--- if ... else if ... else  控制流
--[[
    if( 布尔表达式 1)
    then
    --[ 在布尔表达式 1 为 true 时执行该语句块 --]

    elseif( 布尔表达式 2)
    then
    --[ 在布尔表达式 2 为 true 时执行该语句块 --]

    elseif( 布尔表达式 3)
    then
    --[ 在布尔表达式 3 为 true 时执行该语句块 --]
    else
    --[ 如果以上布尔表达式都不为 true 则执行该语句块 --]
    end
--]]

function color(s)
    if s == "red"
    then
        print("red")
    elseif s == "yellow"
    then
        print("yellow")
    else
        print("green")
    end
end

print(color("red"))
print(color("unknown"))