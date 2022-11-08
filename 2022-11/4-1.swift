var a: String! = nil

let c1 = a ?? "default"
let count1 = a?.count
a = "abc"

let c2 = a ?? "default"
let count2 = a.count
print(a!)
print(c1)
print(c2)
print(count1 as Any)
print(count2)
