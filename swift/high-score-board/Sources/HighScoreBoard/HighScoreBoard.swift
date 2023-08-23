func newScoreBoard() -> [String: Int] {
  var scoreBoard = [String: Int]()
  return scoreBoard
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
  
  scores[name] = score  
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
  scores.removeValue(forKey: name)
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
  scores[name] = 0
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  scores[name] = scores[name, default: 0] + delta
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
  func playerOrder(_ lhs: (String, Int), _ rhs: (String,Int)) -> Bool {
         return lhs.0<rhs.0                                                              
  }
    let sortedScores = scores.sorted(by: playerOrder)
    return sortedScores
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
  func scoreOrder(_ lhs: (String, Int), _ rhs: (String,Int)) -> Bool {
         return lhs.1>rhs.1                                                              
  }
    let sortedScores = scores.sorted(by: scoreOrder)
    return sortedScores
}
