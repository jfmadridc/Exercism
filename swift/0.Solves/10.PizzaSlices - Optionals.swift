import Foundation
func sliceSize(diameter: Double?, slices: Int?) -> Double? {
	guard let diameter = diameter, diameter >= 0, let slices = slices, slices >= 1 else {
			return nil
	}
	let pizzaRadius = diameter / 2
	let pizzaArea = .pi * pow(pizzaRadius,2)
	return pizzaArea / Double(slices)
}

func biggestSlice(diameterA: String, slicesA: String, diameterB: String, slicesB: String) -> String {
	let areaSliceA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
	let areaSliceB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))

	guard areaSliceA != areaSliceB else { return "Neither slice is bigger" }
	guard let areaSliceA = areaSliceA else { return "Slice B is bigger" }
	guard let areaSliceB = areaSliceB else { return "Slice A is bigger" }
	return areaSliceA > areaSliceB ? "Slice A is bigger" : "Slice B is bigger"
}