import Foundation
import QuartzCore

protocol Testable {
  init()
}

final class TestingClass: Testable {}
//struct TestingClass: Testable {}

func specializedAction<T: Testable>(_ item: T) {
  var array: Array<T> = []
  
  for _ in 0..<100000 {
    array.append(item)
  }
}

func unspecializedAction(_ item: any Testable) {
  var array: Array<Testable> = []
  
  for _ in 0..<100000 {
    array.append(item)
  }
}

let unspecializedTime = timeOfRun {
  unspecializedAction(TestingClass())
}

let specializedTime = timeOfRun {
  specializedAction(TestingClass())
}

print(specializedTime)
print(unspecializedTime)
print("Unspecialized function is \(unspecializedTime / specializedTime) times slower than specialized")

func timeOfRun(_ function: () -> ()) -> Double {
  let timeBefore = CACurrentMediaTime()
  function()
  return CACurrentMediaTime() - timeBefore
}
