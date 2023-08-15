func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func isCorrect(_ userInput: String) -> String {
    if(userInput == password){
        return secret
    }
      return "Sorry. No hidden secrets here."
  }
    return isCorrect
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let num1 = f(room)
    let num2 = f(num1)
    let num3 = f(num2)
    return (num1,num2,num3)
}
