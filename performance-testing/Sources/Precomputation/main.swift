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

let dynamicTime = timeOfRun {
    for num in 0..<100000 {
        let operation = Sum()
        _ = operation.perform(num)
    }
}

let staticTime = timeOfRun {
    for num in 0..<100000 {
        let operation: Operation = Sum()
        _ = operation.perform(num)
    }
}

print(staticTime)
print(dynamicTime)
print("Unspecialized function is \(dynamicTime / staticTime) times slower than specialized")

func timeOfRun(_ function: () -> ()) -> Double {
  let timeBefore = CACurrentMediaTime()
  function()
  return CACurrentMediaTime() - timeBefore
}
