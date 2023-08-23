let flip: ((String, String, String)) -> (String, String, String) = { ($0.1, $0.0, $0.2) }
let rotate: ((String, String, String)) -> (String, String, String) = { ($0.1, $0.2, $0.0) }
func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> ( UInt8, (String, String, String)) -> (String, String, String) {
 { (id: UInt8, wire: (String, String, String)) -> (String, String, String) in
  var bits = id
  var order = wire
  for i in 0...7{
        order = bits % 2 == 0 ? flipper(order) : rotator(order)
      bits /= 2
  }
 return order
 }
}
