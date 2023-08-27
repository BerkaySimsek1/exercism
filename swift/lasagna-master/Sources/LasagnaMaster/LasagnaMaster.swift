// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int{
     return expectedMinutesInOven - elapsedMinutes                                          
}
// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: String...) -> Int {
    var count = 0
    for _ in layers {
        count += 2
    }
    return count
}
// TODO: define the 'quantities' function
func quantities(layers: String...) -> (noodles: Int, sauce: Double){
    var noodles: Int = 0
    var sauce: Double = 0.0
    for i in layers{
        if(i == "noodles"){
            noodles+=3
        }else if(i == "sauce"){
            sauce += 0.2
        }else{
             continue
        }
    }
    return (noodles,sauce)
}
// TODO: define the 'toOz' function
func toOz(_ amount: inout (noodles: Int,sauce:Double)) {
    amount.sauce = amount.sauce * 33.814
}

// TODO: define the 'redWine' function
func redWine(layers: String...) -> Bool {
    let whiteWineCount = layers.filter({ ["mozzarella", "ricotta", "béchamel"].contains($0) }).count
    let redWineCount = layers.filter({ ["meat", "sauce"].contains($0) }).count
    return redWineCount >= whiteWineCount
}