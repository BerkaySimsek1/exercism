func func dailyRateFrom(hourlyRate: Int) -> Double {
    return Double(hourlyRate) * 8.0
  }

  func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
      let montlyHour=22.0*8.0
      let rateWithoutDiscount = montlyHour*(Double(hourlyRate))
      let disc = rateWithoutDiscount * (discount/100)
      let rate = rateWithoutDiscount-disc
      return rate.rounded()
  }

  func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
      let rate = 8.0*(Double(hourlyRate))
      let disc =  rate * (discount/100)
      let days = budget / (rate-disc)
      return days.rounded(.down)
  }
