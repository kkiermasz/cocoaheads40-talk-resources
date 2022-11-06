protocol Conference {
  var numberOfAttendees: Int { get }
}
struct CocoaHeads: Conference {
  let numberOfAttendees = 0
}
