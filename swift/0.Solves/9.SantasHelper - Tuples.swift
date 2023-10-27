import Foundation

func cartesianToPolar(_ cart: (x: Double, y: Double)) -> (r: Double, phi: Double) {
	let r = sqrt(pow(cart.x, 2) + pow(cart.y, 2))
	let phi = atan2(cart.y, cart.x)
	let computedTuple: (r: Double, phi: Double) = (r, phi)
	return computedTuple
}

func combineRecords(
  production: (toy: String, id: Int, productLead: String),
  gifts: (Int, [String])
) -> (id: Int, toy: String, productLead: String, recipients: [String]) {

	let (proToy, proId, prodLead) = production
	let combinedTuple = (id:proId, toy:proToy, productLead:prodLead, recipients:gifts.1)
	return combinedTuple
}