extension Double {
  var km: Double { return self * 1_000.0 }
  var m: Double { return self }
  var cm: Double { return self / 100.0 }
  var mm: Double { return self / 1_000.0 }
  var ft: Double { return self / 3.28084 }
  subscript(index: Int) -> Int {
    var decimalBase = 1
    for _ in 0..<index {
      decimalBase *= 10
    }
    return Int(self) / decimalBase % 10
  }

}
let oneInch = 25.4.km
print("One inch is \(oneInch) meters")
print(oneInch[1])
print(oneInch[2])
print(oneInch[3])

extension Int {
  enum Kind {
    case negative, zero, positive
  }
  var kind: Kind {
    switch self {
    case 0:
      return .zero
    case let x where x > 0:
      return .positive
    default:
      return .negative
    }
  }
}
print(3.kind)
