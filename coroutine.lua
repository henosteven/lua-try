co = coroutine.create(function() print"hi" end)
print(co)  -- thread: 0x1c0a080
print(coroutine.status(co)) -- suspended
coroutine.resume(co) -- hi
print(coroutine.status(co)) -- dead
print(coroutine.resume(co)) -- false    cannot resume dead coroutine

co1 = coroutine.create(function() 
    print"start routine"
    for i = 3, 0 , -1 do
        print(i)
        coroutine.yield() -- suspended thread
    end
end)

-- start routine
coroutine.resume(co1) -- 3
print(coroutine.status(co1)) -- suspended
coroutine.resume(co1) -- 2
coroutine.resume(co1) -- 1
coroutine.resume(co1) -- 0
print(coroutine.resume(co1)) -- true
print(coroutine.resume(co1)) -- false   cannot resume dead coroutine

co2 = coroutine.create(function(a, b)
    coroutine.yield(b, a)
    print"after yield"
end)
print(coroutine.resume(co2, 10, 20)) -- true    20  10 return the value from yield
print"-----"
print(coroutine.resume(co2, 10, 20)) -- true
