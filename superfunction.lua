function eraseTerminal()
 io.write("\27[2J")
end
-- writes an `*' at column `x' , row `y'
function mark (x,y)
 io.write(string.format("\27[%d;%dH*", y, x))
end
-- Terminal size
TermSize = {w = 80, h = 24}
-- plot a function
-- (assume that domain and image are in the range [-1,1])
function plot (f)
 eraseTerminal()
for i=1,TermSize.w do
 local x = (i/TermSize.w)*2 - 1
 local y = (f(x) + 1)/2 * TermSize.h
 mark(i, y)
end
 io.read() -- wait before spoiling the screen
end 

-- plot(function (x) return math.sin(x*2*math.pi) end) 

names = {"heno", "xiaopang", "haoran"}
grades = {heno=89, xiaopang=88, haoran=92}
table.sort(names, function(n1, n2) return grades[n1] > grades[n2] end)
print(unpack(names)) -- haoran  heno    xiaopang

newCounter = function() 
    local i = 0
    return function() 
        i = i + 1
        return i
    end
end

c = newCounter()
print(c()) -- 1
print(c()) -- 2
print(c()) -- 3


-- 库函数的写法
lib = {}
lib.sum = function(x, y)
    return x + y
end

function lib.show(name)
   print("hello " .. name)
end

print(lib.sum(1, 2))
lib.show("heno")
