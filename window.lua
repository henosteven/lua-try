function Window(options)
    local _window = {}
    _window.title = options.title or 'default'
    _window.x = options.x or 0
    _window.y = options.y or 0
    return _window
end

-- 这种代码风格酷酷的，跟type{} print"heno" 是一样的，当参数只有一个，且是string或者table的时候可以如是写
win = Window{["x"] = 1, ["y"] = 2; ["title"] = "superx"}
print(win.title, win.x, win.y)
