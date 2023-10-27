func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let monthlyPayment: Double = price / (5 * 12)											
	if monthlyPayment <= monthlyBudget { return "Yes! I'm getting a \(vehicle)"
	} else if monthlyPayment <= monthlyBudget * 1.10 { return "I'll have to be frugal if I want a \(vehicle)"
	} else { return "Darn! No \(vehicle) for me" }
}

func licenseType(numberOfWheels wheels: Int) -> String {
	switch wheels {
		case 2, 3: return "You will need a motorcycle license for your vehicle"
		case 4, 6: return "You will need an automobile license for your vehicle"
		case 18: return "You will need a commercial trucking license for your vehicle"
		default: return "We do not issue licenses for those types of vehicles"
	}
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  var percentage: Int = 0
	switch yearsOld {
		case 0..<3: percentage = 80
		case 3..<10: percentage = 70
		case 10...: percentage = 50
		default: percentage = 0
	}
	return originalPrice * percentage / 100
}