class ETL {
  static func transform(_ old: [String: [String]]) -> [String: Int] {
    var dict: [String: Int] = [:]
      old.forEach { (key: String, value: [String]) in
        let val: Int = Int(key)!
        value.forEach { str in
            dict[str.lowercased()] = val
        }
    }
    return dict
  }
}
