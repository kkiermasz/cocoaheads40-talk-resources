protocol Swimmer {
  func swim()
}

struct Duck: Swimmer {
  let foo = "fasdfsad"
  let goo = "fads"
  let hoo = "fasdfsd"
  let joo = "fdsafsdafdsf"
  func swim() {}
}

struct Fish: Swimmer {
  func swim() {}
}

let swimmers: [Swimmer] = [Duck(), Duck(), Fish()]