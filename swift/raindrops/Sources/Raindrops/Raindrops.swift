enum Drops: String {
    case factorThree = "Pling"
    case factorFive = "Plang"
    case factorSeven = "Plong"
}

func raindrops(_ number: Int) -> String {
    var str = ""
    if (number % 3 == 0)  {str += Drops.factorThree.rawValue}
    if (number % 5 == 0)  {str += Drops.factorFive.rawValue}
    if (number % 7 == 0)  {str += Drops.factorSeven.rawValue}

    return str.isEmpty ?  String(number) : str
}
