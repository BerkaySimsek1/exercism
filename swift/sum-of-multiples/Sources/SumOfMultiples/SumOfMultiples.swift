func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
  // Write your code for the 'SumOfMultiples' exercise in this method.
    var levelSet: Set<Int> = []

    for i in inMultiples where i != 0 {
        for j in 0..<limit {
            if (j % i == 0) {
            levelSet.insert(j)
            }
        }
    }
    return levelSet.reduce(0, +)
}
