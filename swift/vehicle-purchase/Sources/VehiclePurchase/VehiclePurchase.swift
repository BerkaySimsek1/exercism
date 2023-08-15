func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  if(price <= monthlyBudget*12*5) {
        return "Yes! I'm getting a \(vehicle)"
  } else if(price <= (monthlyBudget+(monthlyBudget*0.1))*12*5) {
        return "I'll have to be frugal if I want a \(vehicle)"
  } else {
       return "Darn! No \(vehicle) for me"
  }
}

func licenseType(numberOfWheels wheels: Int) -> String {
  if(wheels == 2 || wheels == 3) {
        return "You will need a motorcycle license for your vehicle"
  } else if(4==wheels || wheels==6) {
        return "You will need an automobile license for your vehicle"
  } else if(wheels==18) {
        return "You will need a commercial trucking license for your vehicle"
  } else {
       return "We do not issue licenses for those types of vehicles"
  }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  if(yearsOld<3) {
        return Int(originalPrice*80/100)
  } else if(3<=yearsOld && yearsOld<10) {
        return Int(originalPrice*70/100)
  } else {
       return Int(originalPrice*50/100)
  }
}
