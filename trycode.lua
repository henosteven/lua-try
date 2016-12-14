fab = function(n) 
    local a = 0
    local b = 1
    if n >= 1 then
        for i = 0, n, 1 do
            a, b = a + b, a
        end
    end
    return a
end

for i = 0, 8 do
    print(fab(i))
end

local extsum = 0
for i = 0, 100000000 do
    extsum = extsum + i
end
print(extsum)

local extsum = 0
fact = function(n, sum)
    extsum = sum
    if n > 0 then
        return fact(n-1, sum + n)
    end
end
fact(100000000, 0)
print(extsum) -- 5050
