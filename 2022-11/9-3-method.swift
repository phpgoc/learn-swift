struct Point {
  var x = 0.0, y = 0.0
  mutating func moveBy(deltaX: Double, y deltaY: Double) {
    x += deltaX
    y += deltaY
  }
  static func f1() {
    print("Point.f1")
  }
}

class SomeClass {
  class func f1() {
    print("SomeClass.f1")
  }
}
Point.f1()
SomeClass.f1()

struct MulTable {
  let multiplier: Int
  //不能使用inout 不能有默认值
  subscript(index: Int) -> Int {
    return multiplier * index
  }
}
for i in 1...9 {
  let table = MulTable(multiplier: i)
  for j in 1...i {
    print(table[j], terminator: " ")
  }
  print()
}

struct Martrix {
  let rows: Int, columns: Int
  var grid: [Double]
  init(rows: Int, columns: Int) {
    self.rows = rows
    self.columns = columns
    grid = Array(repeating: 0.0, count: rows * columns)
  }
  func indexIsValid(row: Int, column: Int) -> Bool {
    return row >= 0 && row < rows && column >= 0 && column < columns
  }
  subscript(row: Int, column: Int) -> Double {
    get {
      assert(indexIsValid(row: row, column: column), "Index out of range")
      return grid[(row * columns) + column]
    }
    set {
      assert(indexIsValid(row: row, column: column), "Index out of range")
      grid[(row * columns) + column] = newValue
    }
  }

}

var matrix = Martrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
// matrix[1, 3] = 3.2

enum Month: Int {
  case jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
  subscript(index: Int) -> Month {
    return Month(rawValue: (self.rawValue + index) % 12)!
  }
}
