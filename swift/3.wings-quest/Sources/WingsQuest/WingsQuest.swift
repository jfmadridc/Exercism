func bonusPoints(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  powerUpActive && touchingEagle // only if both true returns true otherwise false
}

func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
  touchingPowerUp || touchingSeed // true if the bird is touching a power-up or a seed, and return false otherwise
}

func lose(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  !powerUpActive && touchingEagle // true if touching an eagle and does not have a power-up active, and return false otherwise
}

func win(hasPickedUpAllSeeds: Bool, powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  hasPickedUpAllSeeds && !(lose(powerUpActive: powerUpActive, touchingEagle: touchingEagle)) // true if the bird has gathered all of the seeds and has not lost based on the arguments defined in part 3, and return false otherwise.
}
