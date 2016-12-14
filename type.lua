print(type('hello world')) --string
print(type(type)) -- function 
print(type(type(X))) -- string

a = print
a(type(a)) -- function 

print(type {}) -- table function arguments only contain one item and the item is string or table, then the () can be ignore
print"heno"
--print type{} -- this is not allow, 尽管是一个string，但是给print造成了疑惑，lua不会去解析所以就报错了
