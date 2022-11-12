import Darwin.C
import Foundation

let workingGroup = DispatchGroup()

let queue = DispatchQueue(label: String(describing: workingGroup), attributes: .concurrent)

let n: UInt32 = 10
for _ in 0..<n {
  workingGroup.enter()
}
for i in 0..<n {
  queue.async {
    // sleep(UInt32.random(in: 0...3))
    sleep(i)
    print(i)
    fflush(__stdoutp)
    workingGroup.leave()
  }
}
workingGroup.notify(queue: queue) {
  print("All done")
}
print("main thread")
workingGroup.wait()
print("main thread end")
