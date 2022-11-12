import Foundation
import QuartzCore

protocol Testable {
    init()
}

final class TestingClass: Testable {}
//struct TestingClass: Testable {}

func action<T: Testable>(_ item: T) {
    var array: Array<T> = []

    for _ in 0..<100000 {
        array.append(item)
    }
}

func actionDynamic(_ item: Testable) {
    var array: Array<Testable> = []

    for _ in 0..<100000 {
        array.append(item)
    }
}

let dynamicTime = timeOfRun {
    actionDynamic(TestingClass())
}

let staticTime = timeOfRun {
    action(TestingClass())
}

print(staticTime)
print(dynamicTime)
print("Unspecialized function is \(dynamicTime / staticTime) times slower than specialized")

func timeOfRun(_ function: () -> ()) -> Double {
  let timeBefore = CACurrentMediaTime()
  function()
  return CACurrentMediaTime() - timeBefore
}
