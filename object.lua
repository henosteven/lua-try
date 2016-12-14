a = {}
a.x = 1
a.y = 2
print(a)
print(a.x, a.y)

a = {"red", "white", "black"}
print(a[1], a[2], a[3]) --red white black 主要说明的问题lua的下标是从 1 开始的

a = {[0] = "red", "white", "black"}
print(a[1], a[2], a[3]) --white black   nil  当然你也可以强制性的从0开始，但是不建议这么干

a = {["+"]="blue", name="jinjing", [20 + 1] = "heno"} -- 这其实是更加正统的申明方式 ["key"] = value, | ;
print(a["+"], a.name, a["name"], a[21]) -- blue    jinjing jinjing heno 注意[]申明的优势  
--[]这种方式是一种更一般的初始化方式，实际上上面的都是这种一般化的特例 (name="jinjing", "red") 等等
