class Person {
  var name: String
  var age: Int
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
  convenience init(name: String) {
    self.init(name: name, age: 18)
  }
}

class Teacher: Person {
  var salary: Int
  init(name: String, age: Int, salary: Int) {
    self.salary = salary
    super.init(name: name, age: age)
    self.name = name
    self.foo()

  }
  convenience init(name: String) {

    // self.name = name
    self.init(name: name + " 老师", age: 30, salary: 5000)
  }

  func foo() {
    print("Teacher foo")
  }
}

class classRequired {
  var a, b: Int
  required init(_ a: Int, _ b: Int) {
    self.a = a
    self.b = b
    print("classRequired init")

  }
  convenience init() {
    self.init(0, 0)

  }
  deinit {
    print("classRequired deinit")
  }
}
let t = Teacher(name: "张三")
let r = classRequired()

class Base {
  var a: Int
  init(a: Int) {
    print("base certain init")
    self.a = a
  }
  convenience init() {
    print("base convenience init")
    self.init(a: 0)
  }
}
class Derived: Base {
  var b: Int
  init(a: Int, b: Int) {
    print("derived certain init")
    self.b = b
    super.init(a: a)
  }
  override init(a: Int) {
    print("derived override init")
    self.b = 0
    super.init(a: a)
  }
}
let d = Derived()

class canFail {
  var a: Int
  init?(a: Int) {
    if a < 0 {
      return nil
    }
    self.a = a
  }
}

let c = canFail(a: 1)
let c1 = canFail(a: -1)
print(c!, c1 ?? "nil")
