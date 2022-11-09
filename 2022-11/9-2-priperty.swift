struct Point {
  var x = 0.0, y = 0.0
}
struct Size {
  var width = 0.0, height: Double = 0.0
}
struct Rect {
  var origin = Point()
  var size = Size()
  var center: Point {
    get {
      print("get")
      let centerX = origin.x + (size.width / 2)
      let centerY = origin.y + (size.height / 2)
      return Point(x: centerX, y: centerY)
    }
    //   set(newCenter) {
    //     print("set")
    //     origin.x = newCenter.x - (size.width / 2)
    //     origin.y = newCenter.y - (size.height / 2)
    //   }
    set {
      print("set")
      origin.x = newValue.x - (size.width / 2)
      origin.y = newValue.y - (size.height / 2)
    }
  }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
square.center = Point(x: 15.0, y: 15.0)
print(square.center)

var count: Int = 0 {
  willSet(newTotal) {
    print("Total number of items is \(newTotal)")
  }
  didSet {
    if count > oldValue {
      print("Added \(count - oldValue) items.")
    }
  }
}
count = 10
print(count)
count = 11

class Someclass {
  static var storedTypeProperty = "Some value."
  static var computedTypeProperty: Int {
    return 1
  }
  //可以 被子类重写
  class var overrideableComputedTypeProperty: Int {
    return 107
  }
}

class SomeSubclass: Someclass {
  override static var overrideableComputedTypeProperty: Int {
    return 108
  }
}
let some = Someclass()
print(Someclass.storedTypeProperty)
print(Someclass.computedTypeProperty)
print(Someclass.overrideableComputedTypeProperty)
print(SomeSubclass.overrideableComputedTypeProperty)
