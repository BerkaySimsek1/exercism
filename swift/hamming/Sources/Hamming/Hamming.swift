enum equalError: Error{
    case isNotEqual
}

func compute(_ dnaSequence: String, against: String) throws -> Int? {
  var count = 0
    if dnaSequence.count != against.count {
        throw equalError.isNotEqual
    }else{
        for i in 0..<dnaSequence.count{
            if(Array(dnaSequence)[i] != Array(against)[i]){
                count+=1
            }
        }
    }
    return count
}
