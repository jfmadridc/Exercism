func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let monthlyPayment: Double = price / (5 * 12)
																	
	if monthlyPayment <= monthlyBudget {
		return "Yes! I'm getting a \(vehicle)"
	} else if monthlyPayment <= monthlyBudget * 1.10 {
		return "I'll have to be frugal if I want a \(vehicle)"
	} else {
		return "Darn! No \(vehicle) for me" 
	}
}

func licenseType(numberOfWheels wheels: Int) -> String {
  if wheels == 2 || wheels == 3 {
		return "You will need a motorcycle license for your vehicle"
	} else if wheels == 4 || wheels == 6 {
		return "You will need an automobile license for your vehicle"
	} else if wheels == 18 {
		return "You will need a commercial trucking license for your vehicle"
	} else {
		return "We do not issue licenses for those types of vehicles"
	}
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  var percentage: Int = 0
	if yearsOld < 3 {
		percentage = 80
	} else if yearsOld >= 3 && yearsOld < 10 {
		percentage = 70
	} else if yearsOld >= 10 {
		percentage = 50
	}
	return originalPrice * percentage / 100
}