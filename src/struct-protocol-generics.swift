protocol Conference {
	func organise()
}
struct CocoaHeads: Conference {
	func organise() {}
}
let cocoaHeads = CocoaHeads()
func organise(_ conference: some Conference) {
	conference.organise()
}

organise(cocoaHeads)