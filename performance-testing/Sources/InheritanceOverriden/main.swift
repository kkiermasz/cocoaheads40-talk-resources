import Foundation
import QuartzCore

class Building {
  var name: String { UUID().uuidString }
//  dynamic var name: String { UUID().uuidString }
}

class House: Building {
  override var name: String { UUID().uuidString }
}

class Bungalow: House {
  override var name: String { UUID().uuidString }
//  final override var name: String { UUID().uuidString }
}

let buildingTime = timeOfRun {
  for _ in 0..<100000 {
    let building = Building()
    action(building)
  }
}

let houseTime = timeOfRun {
  for _ in 0..<100000 {
    let building = House()
    action(building)
  }
}

let bungalowTime = timeOfRun {
  for _ in 0..<100000 {
    let building = Bungalow()
    action(building)
  }
}

func action(_ building: Building) {
  _ = building.name.isEmpty
}

print("building function calls time is: \(buildingTime)")
print("house function calls time is:    \(houseTime)")
print("bungalow function calls time is: \(bungalowTime)")

func timeOfRun(_ function: () -> ()) -> Double {
  let timeBefore = CACurrentMediaTime()
  function()
  return CACurrentMediaTime() - timeBefore
}
