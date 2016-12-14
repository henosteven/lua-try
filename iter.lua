function iter(t)
    local i = 0
    local n = table.getn(t)

    return function()
        i = i + 1
        if i <= n then return t[i] end
    end
end

t = {1, 2, 3, 4}
itertool = iter(t)
for i in itertool do
    print(i)
end
