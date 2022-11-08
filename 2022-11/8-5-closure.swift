var arr = [1, 2, 3, 4, 5]

arr.sort(by: { $0 > $1 })
print(arr)

arr.sort(by: { (s1, s2) -> Bool in
  s1 < s2
})
print(arr)

arr.sort(by: <)
print(arr)

func useClosure() -> () -> Int {
  var i = 0
  func add() -> Int {
    i += 1
    return i
  }
  return add
}
var f1 = useClosure()
var f2 = f1
// f1 和 f2 是相同的引用，捕获的是同一个变量
for _ in 0..<10 {
  print(f1(), terminator: ",")
}
for _ in 0..<10 {
  print(f2(), terminator: ",")
}

var escapingClosureArr: [() -> Void] = []
func useEscapingClosure(_ closure: @escaping () -> Void) {
  escapingClosureArr.append(closure)
}
useEscapingClosure {
  print("escaping closure1")
}
useEscapingClosure {
  print("escaping closure2")
}
escapingClosureArr[0]()
escapingClosureArr[1]()

func useAutoClosure(_ closure: @autoclosure () -> Bool, msg: String) {
  if closure() {
    print(msg)
  } else {
    print("false")
  }
}

useAutoClosure(1 > 2, msg: "1 > 2")
