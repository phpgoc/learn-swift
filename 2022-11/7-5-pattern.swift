let arrayOfOptionalInts: [Int?] = [1, nil, 3, nil, 5]
for case let i? in arrayOfOptionalInts {
  print(i)
}

let someInt: Int? = 1
if case .some(let i) = someInt {
  print(i)
}

func matchType<T>(value: T) {
  switch value {
  case is Int:
    print("Int")
  case is String:
    print("String")
  case is Double:
    print("Double")
  default:
    print("Unknown")
  }
}

matchType(value: 1)
matchType(value: "1")
matchType(value: 1.0)
matchType(value: true)

protocol Animal {
  var name: String { get }
}
struct Dog: Animal {
  var name: String
  var runSpeed: Double
}
struct Cat: Animal {
  var name: String
  var climbSpeed: Double
}
struct Fish: Animal {
  var name: String
  var depth: Double
}
struct Bird: Animal {
  var name: String
  var flySpeed: Double
}
let animals: [Animal] = [
  Dog(name: "Fido", runSpeed: 10.0),
  Cat(name: "Garfield", climbSpeed: 5.0),
  Fish(name: "Nemo", depth: 100.0),
  Bird(name: "Tweety", flySpeed: 20.0),
]

for animal in animals {
  switch animal {
  case let dog as Dog:
    print("Dog \(dog.name) runs at \(dog.runSpeed) mph")
  case let cat as Cat:
    print("Cat \(cat.name) climbs at \(cat.climbSpeed) mph")
  case is Fish:
    print("Fish \(animal.name) can swim")
  default:
    print("Unknown animal \(animal.name)")
  }
}

struct Employee {
  var salary: Int
}
func ~= (pattern: Int, value: Employee) -> Bool {
  print("debug pattern 1: \(pattern), value: \(value.salary)")
  return pattern == value.salary
}
func ~= (pattern: Range<Int>, value: Employee) -> Bool {
  print("debug pattern 2: \(pattern), value: \(value.salary)")
  return pattern.contains(value.salary)
}
let employees = [
  Employee(salary: 10000),
  Employee(salary: 20000),
  Employee(salary: 30000),
  Employee(salary: 40000),
  Employee(salary: 50000),
]
for employee in employees {
  switch employee {
  case 10000:
    print("Employee with salary 10000")
  case 20000..<30000:
    print("Employee with salary 20000-30000")
  case 30000..<40000:
    print("Employee with salary 30000-40000")
  case 40000..<50000:
    print("Employee with salary 40000-50000")
  default:
    print("Employee with salary 50000 or more")
  }
}
