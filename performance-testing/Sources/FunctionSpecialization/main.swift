import Foundation
import QuartzCore

protocol Conference {
  init()
}

struct CocoaHeads: Conference {
  init() {
    _ = UUID()
    _ = UUID()
  }
}

func unspecialized(_ val: any Conference) {
  var array: Array<Conference> = []
  for _ in 0..<10000 {
    array.append(val)
  }
}

func specialized<ConferenceType: Conference>(_ val: ConferenceType) {
  var array: Array<ConferenceType> = []
  for _ in 0..<10000 {
    array.append(val)
  }
}

let staticTime = timeOfRun {
  let val = CocoaHeads()
  specialized(val)
}

let dynamicTime = timeOfRun {
  let val = CocoaHeads()
  unspecialized(val)
}

print("Unspecialized function is \(dynamicTime / staticTime) times slower than specialized")

func timeOfRun(_ function: () -> ()) -> Double {
  let timeBefore = CACurrentMediaTime()
  function()
  return CACurrentMediaTime() - timeBefore
}
