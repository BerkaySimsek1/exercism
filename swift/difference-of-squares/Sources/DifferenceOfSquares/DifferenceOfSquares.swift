class Squares {
  // Write your code for the 'Difference Of Squares' exercise here.
    let n: Int

    init(_ num: Int){
        n = num
    }

    var squareOfSum: Int {
        let sum = (n * (n+1)) / 2
        return sum * sum
    }

    var sumOfSquares: Int{
        let sum = n * (n+1) * (2 * n + 1) / 6
        return sum
    }

    var differenceOfSquares: Int{
        return squareOfSum - sumOfSquares
    }
}
