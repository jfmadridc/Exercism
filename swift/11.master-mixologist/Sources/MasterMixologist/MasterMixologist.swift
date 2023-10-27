func timeToPrepare(drinks: [String]) -> Double {
	var totalTime = 0.0
	for drink in drinks {
		switch drink {
			case "beer", "soda", "water": totalTime += 0.5
			case "shot": totalTime += 1.0
			case "mixed drink": totalTime += 1.5
			case "fancy drink": totalTime += 2.5
			case "frozen drink": totalTime += 3.0
			default: break
		}
	}
	return totalTime
}

func makeWedges(needed: Int, limes: [String]) -> Int {
	var remaining = needed
	var limes = limes
	var limesUsed = 0

	while remaining > 0 && !limes.isEmpty{
		switch limes[0] {
			case "small": remaining -= 6
			limesUsed += 1
			case "medium": remaining -= 8
			limesUsed += 1
			case "large": remaining -= 10
			limesUsed += 1
			default: break
		}
		limes = Array(limes.dropFirst())
	}
	return limesUsed
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  var orders = remainingOrders
	var minutesLeft = Double(minutesLeft)

	while !orders.isEmpty && minutesLeft > 0{
		let nextOrderPrepTime = timeToPrepare(drinks: orders[0])
		minutesLeft -= nextOrderPrepTime
		orders.removeFirst()
	}
	return orders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
	var beerData: (first: String, last: String, total: Int)? = nil
	var sodaData: (first: String, last: String, total: Int)? = nil

	var wasBeerOrdered = false
	var firstBeer = ""
	var lastBeer = ""
	var totalBeers = 0
	
	var wasSodaOrdered = false
	var firstSoda = ""
	var lastSoda = ""
	var totalSodas = 0

	for order in orders{
		if order.drink == "beer" && wasBeerOrdered == false {
			wasBeerOrdered = true
			firstBeer = order.time
			lastBeer = order.time
			totalBeers += 1
		} else if order.drink == "beer" && wasBeerOrdered == true {
			lastBeer = order.time
			totalBeers += 1
		}

		if order.drink == "soda" && wasSodaOrdered == false {
			wasSodaOrdered = true
			firstSoda = order.time
			lastSoda = order.time
			totalSodas += 1
		} else if order.drink == "soda" && wasSodaOrdered == true {
			lastSoda = order.time
			totalSodas += 1
		}
	}
	
	if wasBeerOrdered{ beerData = (firstBeer, lastBeer, totalBeers) }
	if wasSodaOrdered{ sodaData = (firstSoda, lastSoda, totalSodas) }

	return (beer: beerData, soda: sodaData)
}