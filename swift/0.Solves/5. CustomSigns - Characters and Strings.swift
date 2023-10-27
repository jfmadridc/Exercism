let birthday: String = "Birthday"
let valentine: String = "Valentine's Day"
let anniversary: String = "Anniversary"

let space: Character = " "
let exclamation: Character = "!"

let basePrice: Int = 20
let charCost: Int = 2

func buildSign(for occasion: String, name: String) -> String {
  "Happy" + String(space) + occasion + String(space) + name + String(exclamation)
}

func graduationFor(name: String, year: Int) -> String {
  "Congratulations\(space)\(name)\(exclamation)\nClass\(space)of\(space)\(year)"
}

func costOf(sign: String) -> Int {
  basePrice + (sign.count * charCost)
}