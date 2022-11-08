var arr1: [Int] = []
arr1.append(1)
print(arr1)

let arr2 = [Int](1...10)
print(arr2)

let arr3 = [Int](repeating: 1, count: 10)
print(arr3)

let persons = ["John": 15, "Paul": 16, "George": 17, "Ringo": 18]
let names = Array(persons.keys)
print(names)

var iter = names.makeIterator()
while let name = iter.next() {
  print(name)
}
for i in names.indices {
  print(names[i])
}
names.forEach { print("===\($0)") }

names.forEach { (name) in
  if name == "John" {
    print("John")
    //    break
    // continue

  }

}
print(" arr2.allSatisfy  $0 > 0 :\( arr2.allSatisfy { $0 > 0 })")
print(" arr2.allSatisfy  $0 > 5 :\( arr2.allSatisfy { $0 > 5 })")

let ranIntarr = [10, 20, 52, 35, 45, 65, 75, 85, 95, 100]
print(ranIntarr.first as Any)
print(ranIntarr.last as Any)
print(ranIntarr.first(where: { $0 > 50 }) as Any)
print(ranIntarr.last(where: { $0 < 50 }) as Any)
print(ranIntarr.firstIndex(of: 52) as Any)
print(ranIntarr.lastIndex(of: 152) as Any)
print(ranIntarr.min()!)

print(persons.min(by: { $0.value < $1.value })!)

var nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
nums.append(contentsOf: 11...100)
print(nums)
nums.removeAll(keepingCapacity: true)
print(nums)
print(nums.capacity)

nums += [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(nums)
var numsSlice = nums[2...5]
for i in numsSlice.indices {
  numsSlice[i] *= 2
}
print(numsSlice)
print(nums)

let throw4 = nums.prefix(through: 4)
print(throw4)
nums.shuffle()

print(nums)

var nums2: [Int] = nums.reversed()
print(nums2)
nums2.swapAt(2, 1)
print(nums2)

var str_arr = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
let joined = str_arr.joined(separator: ",")
print(joined)

let ranges = [1...3, 5...7, 9...11]
let joined2 = ranges.joined()
print(joined2)
for i in joined2 {
  print(i, terminator: ",")
}
let ranges2 = ranges + [13...15]

let nestedArray = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
let flatArray = nestedArray.flatMap { $0 }

print(flatArray)
let joinedArray = nestedArray.joined(separator: [100])
print(Array(joinedArray))
