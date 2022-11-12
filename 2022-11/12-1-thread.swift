import Foundation

for i in 0..<10 {
  Thread.detachNewThread {
    print(i)
  }
}
