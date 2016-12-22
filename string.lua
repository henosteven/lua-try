a = "one string"
a = string.gsub(a, "one", "another")
print(a) -- another string

--这里增加（049） 增加0主要是\ddd 可以跟后面的23区分开
print("\97lo\10\04923") 

page = [=[
<HTML>
<HEAD>
<TITLE>An HTML Page</TITLE>
</HEAD>
<BODY>
[[Lua]]
a text between double brackets
</BODY>
</HTML>
]=]
page = [[
<HTML>
<HEAD>
<TITLE>An HTML Page</TITLE>
</HEAD>
<BODY>
Lua
a text between double brackets
</BODY>
</HTML>
]]
io.write(page)

print(10 .. 20) -- 1020 注意要敲上空格，不然容易误解为浮点数
print("hello" .. "world") --  helloworld .. 就是连接符，类似PHP中的.

print("10" + 1) --11 数字字符串被转换成了数字 10 

-- 可以转换，但是其实本质还是不一致的，所有判断为false
print("10" == 10) -- false 尽管可以转换，但是还是不一致的
print("10" ~= 10) -- true 尽管可以转换，但是还是不一致的
print("10" == tostring(10)) -- true
print(false == nil) -- false 尽管false 和 nil 都是lua中的假，但是他们本质上还是不一样的，判断为false
