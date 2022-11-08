struct FibsSequence: Sequence {
  var num: Int

  func makeIterator() -> FibsIterator {
    return FibsIterator(num: num)
  }
  init(num: Int) {
    self.num = num
  }
  //   typealias Iterator = FibsIterator
}
struct FibsIterator: IteratorProtocol {
  var num: Int
  var index = 0
  init(num: Int) {
    self.num = num
  }
  var state = (0, 1)
  mutating func next() -> Int? {
    guard index < num else { return nil }
    index += 1
    let next = state.0
    state = (state.1, state.0 &+ state.1)
    return next
  }
}
let fibs = FibsSequence(num: 100)
for fib in fibs {
  print(fib)
}
