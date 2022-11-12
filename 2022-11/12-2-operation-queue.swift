import Foundation

class ObjectOpertion {
  func test() {
    let opertion: BlockOperation = BlockOperation {
      [
        weak
          self
      ] in
      self?.test1()
    }
    let opertion2 = MyOperation()
    opertion2.completionBlock = {
      print("completionBlock2")
    }
    let queue = OperationQueue()
    // queue.maxConcurrentOperationCount = 1
    queue.addOperation(opertion)
    queue.addOperation(opertion2)
    opertion.waitUntilFinished()
  }
  func test1() {
    sleep(1)
    print("test1")
  }
}

class MyOperation: Operation {
  override func main() {
    print("MyOperation.main")
  }
}
let object = ObjectOpertion()
object.test()
print("main")
