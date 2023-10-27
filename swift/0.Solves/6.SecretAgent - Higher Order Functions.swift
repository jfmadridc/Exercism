func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func checkPassword(input: String) -> String {
		input == password ? secret : "Sorry. No hidden secrets here."
	}
	return checkPassword
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
	let num1: Int = f(room)
	let num2: Int = f(num1)
	let num3: Int = f(num2)

	return (num1, num2, num3)
}
