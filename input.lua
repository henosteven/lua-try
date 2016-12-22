-- lua -v input.lua  heno
print(arg[-1], arg[0], arg[1]) -- -v input.lua heno
print("input a number~")
a = io.read("*number")
print(a)
