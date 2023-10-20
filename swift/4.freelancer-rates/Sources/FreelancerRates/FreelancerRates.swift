let workHoursPerDay: Double = 8
let workDaysPerMonth: Double = 22

func dailyRateFrom(hourlyRate: Int) -> Double {
	workHoursPerDay * Double(hourlyRate)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
	let monthRate: Double = dailyRateFrom(hourlyRate: hourlyRate) * workDaysPerMonth
	let discountPerMonth: Double = monthRate * discount / 100
	let total: Double = monthRate - discountPerMonth
	return total.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
	let dailyRate: Double = dailyRateFrom(hourlyRate: hourlyRate)
	let dailyRateWithDiscount: Double = dailyRate - (dailyRate * discount / 100)
	let enoughtForDays: Double = budget / dailyRateWithDiscount
	return enoughtForDays.rounded(.down)
}