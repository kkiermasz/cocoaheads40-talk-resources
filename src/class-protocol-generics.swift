protocol Conference {
  var numberOfAttendees: Int { get }
}
class CocoaHeads: Conference {
  let numberOfAttendees = 0
}
let cocoaHeads = CocoaHeads()
final class FinalCocoaHeads: Conference {
	let numberOfAttendees = 0
}
let finalCocoaHeads = FinalCocoaHeads()
func organise(_ conference: some Conference) {
	print("Let's welcome today's \(conference.numberOfAttendees) attendees")
}

organise(cocoaHeads)
organise(finalCocoaHeads)