import Foundation

let queue = DispatchQueue(label: "com.test.queue")
var i = 0
var sum = 0
queue.sync {
  print("1")
  queue.async {
    //   queue.sync {
    print("2")
  }
}

var arr = Array(0..<1000)
var arr2 = Array(0..<1000)
func getLastItem() -> Int? {

  if let item = arr.popLast() {
    i += 1
    sum += item
    return item
  } else {
    return nil
  }
}

let group = DispatchGroup()
var threadArray = [Thread]()
for _ in 0..<10 {
  group.enter()
  let thread = Thread {
    while let _ = getLastItem() {
      //   print(item)
    }
    group.leave()
  }
  threadArray.append(thread)
}
for thread in threadArray {
  thread.start()
}
group.wait()
print("without lock: \(i), \(sum)")

threadArray.removeAll()

let lock = NSLock()
let locksum = NSLock()

func getLastUseLock() -> Int? {
  lock.lock()
  defer {
    lock.unlock()
  }
  if let item = arr2.popLast() {
    i += 1
    sum += item
    return item
  } else {
    return nil
  }
}
for _ in 0..<10 {
  group.enter()
  let thread = Thread {
    while let _ = getLastUseLock() {
    }
    group.leave()
  }
  threadArray.append(thread)
}
i = 0
sum = 0
for thread in threadArray {
  thread.start()
}
group.wait()
print("with lock: \(i), \(sum)")
