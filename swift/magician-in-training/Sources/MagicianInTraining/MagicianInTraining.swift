func getCard(at index: Int, from stack: [Int]) -> Int {
    return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    var newArray: [Int] = stack
    if(index>=0 && index<stack.count){newArray[index] = newCard}
    return  newArray
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var newArray: [Int] = stack
    newArray.append(newCard)
    return newArray
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
      var newArray: [Int] = []
    if(index>=0 && index<stack.count){
      for i in stack{
            if(i != stack[index]){
                    newArray.append(i)
            }
      }
    return newArray
    }
    return stack

}

func removeTopCard(_ stack: [Int]) -> [Int] {
      var newArray: [Int] = stack
      if(!newArray.isEmpty){newArray.removeLast()}
      return newArray

}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
      var newArray: [Int] = []
        newArray.append(newCard)
      for i in stack{
            newArray.append(i)
      }
    return newArray

}

func removeBottomCard(_ stack: [Int]) -> [Int] {
      var newArray: [Int] = []
    if(!stack.isEmpty){
      for i in stack{
            if (i == stack.first){
                continue
            }else{
                 newArray.append(i)
                }
            
      }
    
    }
    return newArray
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  return stack.count == size ? true : false
}

func evenCardCount(_ stack: [Int]) -> Int {
      var count = 0
    for i in stack{
        if(i%2==0){
                   count+=1
        }
    }
return count
}
