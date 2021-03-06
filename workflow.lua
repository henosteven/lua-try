print( 1 and "ok" or "no") -- ok
print( nil and "ok" or "no") -- no
print( 1 and false or "other") -- other
-- 需要注意 a and b or c 在 b c 为真的情况下  =  a ? b : c, 否则会有一点问题，要谨慎


a = "2"

if tonumber(a) == 2 then 
    print("equal 2")
elseif tonumber(a) == 3 then
    print("equal 3")
else
    print("not equal")
end

--common while
a = "2"
a = tonumber(a)
while a > 0 do
    print(a)
    a = a - 1
end

--like do while
a = "2"
repeat 
    print(a)
    a = a - 1
until a < 0

--init final step
for i = 10, 0, -1 do
    print(i)
end
print(i) -- nil because i is local var in for loop  auto


days = {"Sunday", "Monday", "Tuesday", "Wednesday",
 "Thursday", "Friday", "Saturday"} 
revDays = {}
for i, v in ipairs(days) do --ipairs is very useful
    revDays[v] = i
end
print(revDays["Saturday"]) -- 7
