function getVersion() 
    return "1.0.0"
end

-- 这其实就是一种程序的思维
function select(n, ...)
    return arg[n]
end

print(select(1, string.find("hello", "ll")))
print(select(2, string.find("hello", "ll")))
