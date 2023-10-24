func getCard(at index: Int, from stack: [Int]) -> Int {
  stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
	if index >= 0 && index < stack.count {
		var newStack: [Int] = stack
		newStack[index] = newCard
		return newStack
	} else {
		return stack
	}
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var newStack: [Int] = stack
	newStack.append(newCard)
	return newStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
	if index >= 0 && index < stack.count {
		var newStack: [Int] = stack
		newStack.remove(at: index)
		return newStack
	} else {
		return stack
	}  
}

func removeTopCard(_ stack: [Int]) -> [Int] {
  if stack.isEmpty {
		return stack
	} else {
		var newStack: [Int] = stack
		newStack.removeLast()
		return newStack
	}
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
  var newStack: [Int] = stack
	newStack.insert(newCard, at: 0)
	return newStack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
  if stack.isEmpty {
		return stack
	} else {
		var newStack: [Int] = stack
		newStack.removeFirst()
		return newStack
	}
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
  var evenCards: Int = 0
	for card in stack {
		if card % 2 == 0 {
			evenCards += 1
		}
	}
	return evenCards
}