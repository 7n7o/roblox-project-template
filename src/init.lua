local Promise = require("@pkg/Promise")

local helloPromise = Promise.new(function(res, rej)
    task.wait(1)
    res("Hello, world!")
end)

helloPromise:andThen(print)