import Foundation

class Bob {
  static func response(_ message: String) -> String {
      let trimmed = message.trimmingCharacters(in: .whitespacesAndNewlines)
      let containsLetter = containsOnlyLetters(input: message)
    if(trimmed.isEmpty) {
        return "Fine. Be that way!"
    }
    let checkLast = trimmed.last!

    if checkLast == "?" && (trimmed == trimmed.uppercased() && containsLetter) {
        return "Calm down, I know what I'm doing!"
    }else if checkLast == "?" {
        return "Sure."
    }
    
      return (trimmed == trimmed.uppercased() && containsLetter) ? "Whoa, chill out!" : "Whatever."
    
  }
}
 
func containsOnlyLetters(input: String) -> Bool {
    return input.contains { $0.isLetter }
}
