let NONWORDS = Set<String>([
  "a", "an", "the", "and", "but", "or", "for", "nor", "on", "at", "to", "from", "by", "about", "as",
  "into", "like", "of", "off", "out", "over", "up", "with",
])

let paragragh = """
  Swift is a general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. for iOS, iPadOS, macOS, watchOS, tvOS, Linux, and z/OS. Swift is designed to work with Apple's Cocoa and Cocoa Touch frameworks and the large body of existing Objective-C code written for Apple products. It is built with the open source LLVM compiler framework and has been included in Xcode since version 6. Swift is intended to be more resilient to erroneous code (\"safer\") than Objective-C. The compiler tries to infer the intended usage of ambiguous API, and flags unsafe code. Swift incorporates modern features of programming languages, including support for functional programming and generic programming. It is built with the open source LLVM compiler framework and has been included in Xcode since version 6. Swift is intended to be more resilient to erroneous code (\"safer\") than Objective-C. The compiler tries to infer the intended usage of ambiguous API, and flags unsafe code. Swift incorporates modern features of programming languages, including support for functional programming and generic programming.
  """

func countWords(_ paragragh: String) -> [(String, Int)] {
  var words = [String: Int]()
  for word in paragragh.lowercased().split(separator: " ") {
    let word = String(word)
    if !NONWORDS.contains(word) {
      words[word, default: 0] += 1
    }
  }
  return words.sorted(by: { $0.1 > $1.1 })
}
let words = countWords(paragragh).prefix(5)
print(words)

func countWordUseMap(_ paragragh: String) -> [(String, Int)] {
  let words = paragragh.lowercased().split(separator: " ")
  let wordMap = words.reduce(into: [String: Int]()) { (result, word) in
    let word = String(word)
    if !NONWORDS.contains(word) {
      result[word, default: 0] += 1
    }
  }
  return wordMap.sorted(by: { $0.1 > $1.1 })
}
let words2 = countWordUseMap(paragragh).prefix(5)
print(words2)

var employee = Set<String>([])
let randomeBase = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
for _ in 0...100_000 {
  employee.insert(
    String(
      (1...Int.random(in: 1...5)).map({
        _ in randomeBase.randomElement()!
      }))
  )
}
let names =
  employee
  .filter({ $0.first!.isUppercase })
  .filter({ $0.count > 2 })

let joinedName = names.joined(separator: ",")
print(joinedName)
print(names.count)
