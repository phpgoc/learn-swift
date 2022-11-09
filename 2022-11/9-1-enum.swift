enum CompassPoint: CaseIterable {
  case north
  case south
  case east
  case west
}

var directionToHead = CompassPoint.west
switch directionToHead {
case .north:
  print("Lots of planets have a north")
case .south:
  print("Watch out for penguins")
case .east:
  print("Where the sun rises")
case .west:
  print("Where the skies are blue")
}

for direction in CompassPoint.allCases {
  switch direction {
  case .north:
    print("Lots of planets have a north")
  case .south:
    print("Watch out for penguins")
  case .east:
    print("Where the sun rises")
  case .west:
    print("Where the skies are blue")
  }
}

enum Barcode {
  case upc(Int, Int, Int, Int)
  case qrCode(String)
}
var bar1 = Barcode.upc(8, 85909, 51226, 3)
var bar2 = Barcode.qrCode("ABCDEFGHIJKLMNOP")

enum Planet: Int {
  case mercury = 1
  case venus
  case earth = 6
  case mars, jupiter, saturn, uranus, neptune
}

var posiblePlanet = Planet(rawValue: 7)
print(posiblePlanet ?? "nil")
posiblePlanet = Planet(rawValue: 15)
print(posiblePlanet ?? "nil")

enum DirString: String {
  case north
  case south
  case east
  case west
}
print(DirString.north)

enum ArithmeticExpression {
  case number(Int)
  indirect case addition(ArithmeticExpression, ArithmeticExpression)
  indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

func evaluate(_ expression: ArithmeticExpression) -> Int {
  switch expression {
  case let .number(value):
    return value
  case let .addition(left, right):
    return evaluate(left) + evaluate(right)
  case let .multiplication(left, right):
    return evaluate(left) * evaluate(right)
  }
}
let firstExpression = ArithmeticExpression.number(5 + 2)
let secondExpression = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(firstExpression, secondExpression)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

print(evaluate(product))
