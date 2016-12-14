function testvar()
    a = 10
    b = 20
end

function testvar2()
    local a = 100
    local b = 200
end

a, b = 0, 0
print(a, b) -- 0 0
testvar()
print(a, b) -- 10 20 这方非常方便理解全局变量和局部变量的区别
testvar2()
print(a, b) -- 10 20 函数内的局部变量必须要显示声明

function maxinum(a) 
    local mi = 1
    local mv = a[mi]

    for i, val in pairs(a) do
        if val > mv then
            mi = i
            mv = val
        end
    end
    print(i) -- nil 在for 循环条件中，变量是自动被声明为局部变量的
    return mi, mv
end

print(maxinum({5,3,23,1,56}))


function testarg(a, ...)
    print(a)
    for i, val in pairs(arg) do -- 有类似go语言中的 for i , val in range(arg)
        print(i, val) -- 注意arg有一项特殊的 arg.n = 3 就是参数的个数
    end
end

testarg(1, 2, 3, 4)

a = {1, 2, 3, 4}
print(a) -- table: 0x1f15370
print(unpack(a)) -- 1 2 3 4 慢慢体会unpack的作用，就类似PHP中的extract

f = string.find
a = {"hello", "ll"}
print(f(unpack(a))) -- 3 4
print(f(a[1], a[2])) -- 3 4
print(f("hello", "ll")) -- 3 4 仔细对比上面的两种传参方式，你会发现unpack还是挺有作用的

function returntwo() 
    return 1, 2
end

_, second = returntwo() -- 有没有发现这里的写法跟go语言非常的相似
print(second)


version1 = function() return '1.0.0' end -- 其实这才是lua函数的真实面目 跟 a = {} 没啥本质区别
function version2() return '1.0.0' end -- 这个只是函数语法糖衣，但是很适合C语言类开发人员习惯
print(version1()) -- 1.0.0
print(version2()) -- 1.0.0
