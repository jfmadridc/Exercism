import Foundation
func sliceSize(diameter: Double?, slices: Int?) -> Double? {
	guard let diameter = diameter, diameter >= 0,
				let slices = slices, slices >= 1 
		else {
			return nil
	}

	let pizzaRadius = diameter / 2
	let pizzaArea = .pi * pow(pizzaRadius,2)

	return pizzaArea / Double(slices)
	 
}

func biggestSlice(
	diameterA: String, slicesA: String,
	diameterB: String, slicesB: String
) -> String {
	let areaSliceA: Double?
	let areaSliceB: Double?

	if let diameterA = Double(diameterA), let slicesA = Int(slicesA){
		areaSliceA = sliceSize(diameter: diameterA, slices: slicesA)
	} else {
		areaSliceA = nil
	}

	if let diameterB = Double(diameterB), let slicesB = Int(slicesB){
		areaSliceB = sliceSize(diameter: diameterB, slices: slicesB)
	} else {
		areaSliceB = nil
	}

	if areaSliceA is Double && areaSliceB == nil {
		return "Slice A is bigger"
	} else if areaSliceB is Double && areaSliceA == nil{
		return "Slice B is bigger"
	}

	if areaSliceA is Double && areaSliceB is Double {
		if areaSliceA! == areaSliceB! {
			return "Neither slice is bigger"
		} else if areaSliceA! > areaSliceB! {
			return "Slice A is bigger"
		} else if (areaSliceA)! < (areaSliceB)! {
			return "Slice B is bigger"
		} 
	}

	if areaSliceA == nil && areaSliceB == nil{
		return "Neither slice is bigger"
	}

	return ""
}
