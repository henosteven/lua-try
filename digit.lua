-- 本文的测试主要是面对redis lua 脚本中的一些小坑
-- eval "local r=3.2 return r" 0  => 3
-- eval "local r={1, 2, nil, 3} return r" 0  => 1 2
-- eval "local r=3.2 redis.call('set', 'name', r)  return redis.call('get', 'name')" 0  => 3.2000000000000002
--
rFloat = function() 
    local pi = 3.14
    return pi
end

print(rFloat()) -- 3.14

rTable = function()
    local t = {1, 2, ni, 3}
    return t
end

local a = {1, 2, nil, 3}
print(unpack(a)) -- 1   2   nil 3
print(unpack(rTable())) -- 1   2   nil 3
