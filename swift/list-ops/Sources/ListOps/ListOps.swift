//Solution goes in Sources

func append(_ list1: [Int], _ list2: [Int]) -> [Int]{
    var list = list1
    for i in list2 {
        list.append(i)
    }
    return list
}


func concat(_ lists: [Int]...) -> [Int]{
    var list: [Int] = []
    for i in lists {
        for j in i {
            list.append(j)
        }
    }
    return list
}

func filter(_ input: [Int],_ cond: (Int) -> Bool) -> [Int] {
    var array: [Int] = []

    for i in input {
        if(cond(i)){
            array.append(i)
        }
    }
    return array
}

func length(_ list: [Int]) -> Int {
    return list.count
}

func map(_ list: [Int], _ cond: (Int) -> Int) -> [Int] {
    var array: [Int] = []

    for i in list {
        array.append(cond(i))
    }
    return array
}

func foldRight<T, U>(_ data: [T], accumulated: U, combine: (T, U) -> U) -> U {
    let n = data.count
    var val = accumulated
    for i in 0..<n {
        val = combine(data[n - i - 1], val)
    }
    return val
}
func foldLeft<T, U>(_ data: [T], accumulated: U, combine: (U, T) -> U) -> U {
    let n = data.count
    var val = accumulated
    for i in 0..<n {
        val = combine(val, data[i])
    }
    return val
}

func reverse(_ list: [Int]) -> [Int] {
    var reversed: [Int] = []

    for i in 0..<list.count{
        reversed.append(list[list.count-i-1])
    }  

    return reversed
}




