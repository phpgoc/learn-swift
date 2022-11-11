func genericSwap<T>(_ a: inout T, _ b: inout T) where T: Equatable {
  let tmp = a
  a = b
  b = tmp
}

var a = 1
var b = 2
genericSwap(&a, &b)
print(a, b)

struct Stack<Element> {
  var items = [Element]()
  mutating func push(_ item: Element) {
    items.append(item)
  }
  mutating func pop() -> Element {
    return items.removeLast()
  }
}
extension Stack {
  var topItem: Element? {
    return items.isEmpty ? nil : items[items.count - 1]
  }
}
var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
while let topItem = stackOfStrings.topItem {
  print("Top item: \(topItem)")
  _ = stackOfStrings.pop()
}

protocol genericProtocol {
  associatedtype T
  var value: T { get }
}

struct genericInt: genericProtocol {
  var value: Int
}
struct genericString: genericProtocol {
  var value: String
}
let int1 = genericInt(value: 1)
let str1 = genericString(value: "Hello")

protocol Container {
  associatedtype ItemType
  mutating func append(_ item: ItemType)
  var count: Int { get }
  subscript(i: Int) -> ItemType? { get }
}

struct IntStack: Container {
  typealias ItemType = Int
  var items = [Int]()
  mutating func push(_ item: Int) {
    items.append(item)
  }
  mutating func pop() -> Int {
    return items.removeLast()
  }
  mutating func append(_ item: Int) {
    self.push(item)
  }
  var count: Int {
    return items.count
  }
  subscript(i: Int) -> Int? {
    return i >= count ? nil : items[i]
  }
}
var stack = IntStack()
stack.append(1)
stack.append(2)
stack.append(3)
for i in 0...stack.count {
  print(stack[i] ?? "nil")
}

struct subscriptGenericStruct {
  subscript<T>(index: T) -> T {
    return index
  }
}
let subscriptGeneric = subscriptGenericStruct()
print(subscriptGeneric[1])
print(subscriptGeneric["Hello"])
