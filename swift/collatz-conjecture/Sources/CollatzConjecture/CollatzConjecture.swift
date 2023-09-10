enum numError: Error {
    case isNotPositive
}

class CollatzConjecture {
  static func steps(_ number: Int) throws -> Int? {
      var count = 0
      var num = number
    if number > 0 {
        while num != 1 {
              if(num%2==0){
                    num = num / 2
              }else{
                   num = 3 * num + 1
              }
            count+=1
        }
    }else{
        throw numError.isNotPositive
    }
    return count
  }
}

