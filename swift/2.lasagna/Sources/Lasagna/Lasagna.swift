let expectedMinutesInOven: Int = 40
let minutesPerLayer: Int = 2

func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
	expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: Int) -> Int {
	layers*minutesPerLayer
}

func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
	preparationTimeInMinutes(layers: layers) + elapsedMinutes
}