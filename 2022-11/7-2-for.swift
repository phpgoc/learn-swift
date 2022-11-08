for i in stride(from: 0, to: 10, by: 2) {
  print(i)
}
for i in stride(from: 0, through: 10, by: 2) {
  print(i)
}

var to = 10
repeat {
  print(to)
  to -= 1
} while to > 0

let dict = ["a": 1, "b": 2, "c": 3]
for (key, value) in dict {
  print("\(key): \(value)")
}
for t in dict {
  print("\(t.0): \(t.1)")
}
for t in dict {
  print("\(t.key): \(t.value)")
}
