func f1() -> String {
  "f1"
}

func f2(_ arr: [Int]) -> (min: Int, max: Int)? {
  if arr.isEmpty {
    return nil
  }
  var min = arr[0]
  var max = arr[0]
  for i in arr {
    if i < min {
      min = i
    }
    if i > max {
      max = i
    }
  }
  return (min, max)
}

print(f2([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) ?? "nil")

func f3(to: Int, from num: Int) -> Int {
  num - to
}

print(f3(to: 10, from: 100))

func f4(_ i1: Int, _ i2: Int, i3: Int = 10, _ i4: Int) -> Int {
  i1 + i2 + i3 + i4
}
print(f4(1, 2, 3))
print(f4(1, 2, i3: 3, 4))

func f5(_ numbers: Double...) -> Double {
  var sum: Double = 0
  for i in numbers {
    sum += i
  }
  return sum
}
print(f5(1, 2, 3, 4, 5, 6, 7, 8, 9, 10))

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
  let temp = a
  a = b
  b = temp
}

var a = 10
var b = 20
swapTwoInts(&a, &b)
print(a, b)

func add(_ a: Int, _ b: Int) -> Int {
  a + b
}
func mul(_ a: Int, _ b: Int) -> Int {
  a * b
}
func do_operator(_ a: Int, _ b: Int, _ op: (Int, Int) -> Int) -> Int {
  op(a, b)
}
print(do_operator(10, 20, add))
print(do_operator(10, 20, mul))

func moveRandom(_ a: inout Int) {
  func moveAddRandom(_ a: inout Int) {
    a += Int.random(in: 1...10)
  }
  func moveSubRandom(_ a: inout Int) {
    a -= Int.random(in: 1...10)
  }
  if a < 0 {
    moveAddRandom(&a)
  } else {
    moveSubRandom(&a)
  }
}
var a1 = 10
for _ in 1...10 {
  moveRandom(&a1)
  print("a1 = \(a1)")
}
