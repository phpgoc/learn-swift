protocol SomeProtocol {
  var mustBeSettable: Int { get set }
  var doesNotNeedToBeSettable: Int { get }
}

class SomeClass: SomeProtocol {
  var mustBeSettable: Int = 0
  var doesNotNeedToBeSettable: Int = 0
}

protocol AnotherProtocol {
  static var someTypeProperty: Int { get set }
  func someMethod()

}
class AnotherClass: AnotherProtocol {
  static var someTypeProperty: Int = 0
  func someMethod() {
  }
}

protocol initProtocol {
  init(someParameter: Int)
}
class initClass: initProtocol {
  required init(someParameter: Int) {
  }
}

protocol Named {
  var name: String { get }
}
protocol Aged {
  var age: Int { get }
}
struct Person: Named, Aged {
  var name: String
  var age: Int
}
func wishHappyBirthday(to celebrator: Named & Aged) {
  print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
}
let birthdayPerson = Person(name: "Malcolm", age: 21)
wishHappyBirthday(to: birthdayPerson)
