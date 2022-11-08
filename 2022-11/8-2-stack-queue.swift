struct Stack<T> {
  private var elements = [T]()
  var isEmpty: Bool {
    return elements.isEmpty
  }
  var count: Int {
    return elements.count
  }
  mutating func push(_ element: T) {
    elements.append(element)
  }
  mutating func pop() -> T? {
    return elements.popLast()
  }
  func peek() -> T? {
    return elements.last
  }
}

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)
while let value = stack.pop() {
  print(value)
}

struct Queue<T> {
  private var elements = [T]()
  var isEmpty: Bool {
    return elements.isEmpty
  }
  var count: Int {
    return elements.count
  }
  mutating func enqueue(_ element: T) {
    elements.append(element)
  }
  mutating func dequeue() -> T? {
    if isEmpty {
      return nil
    }
    return elements.removeFirst()
  }
  func peek() -> T? {
    return elements.first
  }
}

var queue = Queue<Int>()
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
while let value = queue.dequeue() {
  print(value)
}
