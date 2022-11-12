import Foundation

// 最终的目标队列都是主队列和全局队列
// 如果把一个并行队列 的目标设置为串行队列，那么这个并行队列就不再是并行队列了
// 如果把多个队列的目标设置为同一个串行队列，那么这些队列就会串行执行
// 如果设置目标队列形成环，结果不可预期
// 如果执行过程中更换目标队列，结果不可预期

//qos : default ,background, userInitiated, userInteractive, utility
// autoreleaseFrequency:inherit, workItem, never
// target: nil, DispatchQueue.main, DispatchQueue.global()

let queue = DispatchQueue(
  label: "com.test.queue",
  qos: DispatchQoS.default,

  attributes: DispatchQueue.Attributes.concurrent,
  target: nil)

queue.sync {
  print("1")
}
queue.async {
  print("2")
}
queue.asyncAfter(
  deadline: .now() + 2.5,
  execute: {
    print("3")

  })
print("main thread")
sleep(3)
