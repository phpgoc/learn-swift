import Foundation

@propertyWrapper
struct Wrapper<Value> {
  var key: String
  var defaultValue: Value
  init(_ key: String, defaultValue: Value) {
    self.key = key
    self.defaultValue = defaultValue
  }
  var wrappedValue: Value {
    get {
      return UserDefaults.standard.object(forKey: key) as? Value ?? defaultValue
    }
    set {
      UserDefaults.standard.set(newValue, forKey: key)
    }
  }
}

struct User {
  @Wrapper("name", defaultValue: "John Doe") var name: String
  @Wrapper("age", defaultValue: 18) var age: Int
}

var user = User()
print(user.name)  // John Doe
print(user.age)  // 18
user.name = "Jane 2"
user.age = 20
print(user.name)  // Jane 2
print(user.age)  // 20
