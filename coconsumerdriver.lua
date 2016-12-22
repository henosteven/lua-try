-- consumer drivren designed
-- call the consumer at first, then wake up the producer to produce data
consumer = coroutine.create(function()
    while true do
        local status, data = coroutine.resume(producer)
        print(data)
    end
end
)

send = function(input)
    coroutine.yield("get input ".. input)
end

producer = coroutine.create(function()
    while true do
        print("please input something~")
        local input = io.read()
        send(input)
    end
end
)

coroutine.resume(consumer)
