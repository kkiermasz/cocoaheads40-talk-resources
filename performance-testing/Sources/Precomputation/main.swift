import Foundation
import QuartzCore

protocol Operation {
  func perform(_ val: Int) -> Int
}

extension Operation {
  func perform(_ val: Int) -> Int { val + val }
}

struct Sum: Operation {
  func perform(_ val: Int) -> Int { val + val }
}

let structTime = timeOfRun {
  for num in 0..<100000 {
    let operation = Sum()
    _ = operation.perform(num)
  }
}

let protocolTime = timeOfRun {
  for num in 0..<100000 {
    let operation: Operation = Sum()
    _ = operation.perform(num)
  }
}

print(protocolTime)
print(structTime)
print("Struct function is \(structTime / protocolTime) times slower than protocol's default")

func timeOfRun(_ function: () -> ()) -> Double {
  let timeBefore = CACurrentMediaTime()
  function()
  return CACurrentMediaTime() - timeBefore
}
