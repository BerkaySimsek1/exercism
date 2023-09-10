enum BinarySearchError: Error {
    case valueNotFound
}

class BinarySearch {
    var binarySearchArray: [Int]
    init(_ numArray: [Int]){
          binarySearchArray = numArray.sorted()
    }
    
    func searchFor(_ num:Int) throws -> Int{
            var low = 0
            var high = binarySearchArray.count - 1
                
            while low <= high {
                let mid = (low + high) / 2
                let midValue = binarySearchArray[mid]
                
                if midValue == num {
                    return mid
                } else if midValue < num {
                    low = mid + 1
                } else {
                    high = mid - 1
                }
            }
            throw BinarySearchError.valueNotFound
        }
}


