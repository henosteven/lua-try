function iter(t)
    local i = 0
    local n = table.getn(t)

    return function()
        i = i + 1
        if i <= n then return t[i] end
    end
end

t = {"heno", "xiaopang", "haoran", "xiaohua"}
for i in iter(t) do -- for exp 只会运行一次, 然后一直调用返回的 f 
    print(i)
end

function testiter(a, i)
    i = i + 1 -- 
    v = a[i] -- 
    if v then
        return i, v
    end
end

for i, v in testiter, t, 0 do -- 集合上面的例子进行对比就更加清晰了
    print(i, v) -- 1 heno 2 xiaopang 3 haoran 4 xiaohua
end

for _, v in testiter, t, 1 do
    print(v) -- 2 xiaopang 3 haoran 4 xiaohua 迭代函数 状态常量 控制变量
end
