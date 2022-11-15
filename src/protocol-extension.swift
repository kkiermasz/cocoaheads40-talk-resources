protocol Conference {
  func foo()
}

extension Conference {
  func foo() { print("Conference foo") }
  func goo() { print("Conference goo") }
}

struct CocoaHeads: Conference {
  func foo() { print("CocoaHeads foo") }
  func goo() { print("CocoaHeads goo") }
}

let cocoaHeads: Conference = CocoaHeads()
cocoaHeads.foo()
cocoaHeads.goo()