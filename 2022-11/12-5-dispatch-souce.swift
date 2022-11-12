import Darwin.C
import Foundation

let queue = DispatchQueue(label: "com.test.queue", attributes: .concurrent)
let timer = DispatchSource.makeTimerSource(queue: queue)
timer.schedule(deadline: .now(), repeating: .seconds(1))
var seconds = 10
timer.setEventHandler {
  guard seconds > 0 else {
    timer.cancel()
    return
  }
  seconds -= 1
  print(seconds)
  fflush(__stdoutp)
}
timer.resume()
sleep(11)
