receive = function(prod)
    local status, data = coroutine.resume(prod)
    return data
end

send = function(x)
    coroutine.yield(x)
end

consumer = function(prod)
    while true do
        local input = receive(prod)
        print(input)
    end
end

producer = function()
    return coroutine.create(function()
        while true do
            local data = io.read()
            send(data)
        end
    end)
end

filter = function(prod)
    return coroutine.create(function() 
        while true do
            local data = receive(prod)
            send(data)
        end
    end)
end

-- consumer(filter(producer()))
p = producer()
f = filter(p)
c = consumer(f)
