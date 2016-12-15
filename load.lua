f = loadstring("i = i + 1")
i = 0
f(); print(i) -- 1
f(); print(i) -- 2
f(); print(i) -- 3
f(); print(i) -- 4

f = loadstring("local a = 10; return a + 20")
print(f) -- function
print(f()) -- 30


local i = 0
f = loadstring("print(i); i = i + 1") -- loadstring总在全局环境编译他们的串
g = function () i = i + 1 end

g(); print(i) -- 1 -- 说明函数使用的local i
g(); print(i) -- 2

print("---")
f() -- 4 -- 说明loadstring 使用的是全局变量，也就是文件开头的 i 
f() -- 5
f() -- 6
