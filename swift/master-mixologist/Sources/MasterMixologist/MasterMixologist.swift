func timeToPrepare(drinks: [String]) -> Double {
    var count: Double = 0
  for drink in drinks{
    if(drink == "beer" || drink == "soda" || drink == "water"){
            count += 0.5   
    }else if(drink=="shot"){
            count += 1.0
    }else if(drink=="mixed drink"){
            count += 1.5
    }else if(drink == "fancy drink"){
            count += 2.5
    }else{
            count += 3.0
    }
  }
    return count
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    var wedge = needed
    var count = 0
    var countlime = 0
  for lime in limes{
        
        if(wedge<=0){break}
        if(lime == "small"){
                wedge-=6
            countlime+=1
        }else if(lime == "medium"){
                wedge-=8
            countlime+=1
        }else{
                wedge -= 10
            countlime+=1
        }
  
  count+=1
    if(count==limes.count){break}
  }
return countlime
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    var count = 0
    var leftMins = Double(minutesLeft)
    var array = remainingOrders
  for remain in remainingOrders{
        
        if(count==remainingOrders.count){break}
        if(leftMins<=0){break}
        leftMins -= timeToPrepare(drinks: remain)
        array.removeFirst()
        count += 1
  }
return array
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
  var beerCount = 0
  var sodaCount = 0
  var beer = (first: "", last: "", total:0)
  var soda = (first: "", last: "", total:0)  
  for order in orders{
        if(order.0 == "beer"){
            beerCount += 1
            if(beerCount == 1){
                    beer.0 = order.1
                    beer.1 = order.1
            }else{
                    beer.1 = order.1
            }
            beer.2 = beerCount
        }else if(order.0 == "soda"){
            sodaCount += 1
            if(sodaCount == 1){
                    soda.0 = order.1
                    soda.1 = order.1
            }else{
                    soda.1 = order.1
            }
            soda.2 = sodaCount
        }else{
             continue
        }
   }
    if(beerCount == 0 && sodaCount == 0){
        return (nil,nil)
    }else if(beerCount == 0){
        return (nil,soda)
    }else if(sodaCount == 0){
        return (beer,nil)
    }
    return (beer,soda)
}
