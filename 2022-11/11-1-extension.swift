protocol TextRepresentable {
  var textualDescription: String { get }
}

struct Hamster {
  var name: String
  var textualDescription: String {
    return "A hamster named \(name)"
  }
}

extension Hamster: TextRepresentable {}

extension Array: TextRepresentable where Element: TextRepresentable {
  var textualDescription: String {
    let itemsAsText = self.map { $0.textualDescription }
    return "[" + itemsAsText.joined(separator: ", ") + "]"
  }
}

var arr1 = [Hamster]()
arr1.append(Hamster(name: "Hamster1"))
arr1.append(Hamster(name: "Hamster2"))
print(arr1.textualDescription)
