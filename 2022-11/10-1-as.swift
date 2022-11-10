class Base {
  var b: Int = 0
}
class Sub1: Base {
  var s1: Int = 0
}
class Sub2: Base {
  var s2: Int = 0
}

var arr = [Base]()
arr.append(Sub1())
arr.append(Sub2())
for item in arr {
  if let s1 = item as? Sub1 {
    print("s1")
    print(s1.s1)
  } else if let s2 = item as? Sub2 {
    print("s2")
    print(s2.s2)
  }
}
