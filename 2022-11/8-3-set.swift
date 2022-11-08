struct Person {
  var name: String
  var age: Int
}

extension Person: Hashable {
  func hash(into hasher: inout Hasher) {
    hasher.combine(name)

  }
}
extension Person: Equatable {
  static func == (lhs: Person, rhs: Person) -> Bool {
    return lhs.name == rhs.name
  }
}

var persons = Set<Person>()
persons.insert(Person(name: "a", age: 1))
persons.insert(Person(name: "b", age: 2))
persons.insert(Person(name: "c", age: 3))
persons.insert(Person(name: "d", age: 4))
persons.insert(Person(name: "a", age: 5))
persons.update(with: Person(name: "a", age: 6))
for person in persons {
  print(person)
}
print(persons.capacity)

var chars = Set<Character>(["a", "b", "c", "d"])
var f = chars.popFirst()
print(chars)
var ints = Set<Int>()
var l = 0
for i in 1...100_000 {
  ints.insert(i)
  if ints.capacity > l {
    l = ints.capacity
    print(l, terminator: ",")
    print(ints.count)
  }
}

let s1 = Set<Int>([1, 2, 3, 4, 5])
let s2 = Set<Int>([3, 4, 5, 6, 7])
print(s1.intersection(s2))
print(s1.union(s2))
print(s1.symmetricDifference(s2))
print(s2.symmetricDifference(s1))
print(s1.subtracting(s2))
print(s2.subtracting(s1))
let s3 = s1
let s4 = Set<Int>([1, 2, 3])
print(s3.isSubset(of: s1))
print(s4.isSubset(of: s1))
print(s3.isStrictSubset(of: s1))
print(s4.isStrictSubset(of: s1))

func getAllSubsets<T: Hashable>(_ set: Set<T>) -> Set<Set<T>> {
  var subsets = Set<Set<T>>()
  subsets.insert(Set<T>())
  for elem in set {
    for var subset in subsets {
      subset.insert(elem)
      subsets.insert(subset)
    }
  }
  return subsets
}
let baseSet = Set<Int>([1, 2, 3])
let allSubsets = getAllSubsets(baseSet)
print(allSubsets)
