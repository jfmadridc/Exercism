extension Array{
	func checkIndexValid(_ indexToCheck: Array.Index) -> Bool {
		return indexToCheck >= 0 && indexToCheck < self.count }}

func getCard(at index: Int, from stack: [Int]) -> Int {
  return stack.checkIndexValid(index) ? stack[index] : 0}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
	if stack.checkIndexValid(index) { 
		var newStack = stack
		newStack[index] = newCard
		return newStack
	} else { return stack } }

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
	return stack + [newCard] }

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
	if stack.checkIndexValid(index) {
		var newStack = stack
		newStack.remove(at: index)
		return newStack
	} else { return stack } }

func removeTopCard(_ stack: [Int]) -> [Int] {
  return stack.dropLast() }

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
  return [newCard] + stack }

func removeBottomCard(_ stack: [Int]) -> [Int] {
  return Array(stack.dropFirst()) }

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  stack.count == size }

func evenCardCount(_ stack: [Int]) -> Int {
  var evenCards = 0
	for card in stack {
		if card % 2 == 0 { evenCards += 1 } }
	return evenCards }
