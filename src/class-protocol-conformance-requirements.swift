protocol Conference {
  var numberOfAttendees: Int { get }
}
class CocoaHeads: Conference {
  let numberOfAttendees = 0
}
