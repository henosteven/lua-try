-- print "enter a number:"
-- n = io.read("*number")
-- if not n then error("invalid input!!!") end

n = io.read()
assert(tonumber(n), "invalid input " .. n  .. " is not number")

function testerror()
    error({message="error"}) -- error 可以返回更多数据信息
end

status, error = pcall(testerror) -- 可以返回更多的信息 

if status then
    print("everything is ok")
else
    print("test error " .. error.message)
end

status, error = pcall(function() n = 'heno' + 'jinjing' end) -- 内部抛出来的错误也能被hold住
print(error)

