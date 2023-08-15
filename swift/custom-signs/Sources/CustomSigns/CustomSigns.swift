// TODO: define the 'birthday' String constant
let birthday = "Birthday"
// TODO: define the 'valentine' String constant
let valentine = "Valentine's Day"
// TODO: define the 'anniversary' String constant
let anniversary = "Anniversary"
// TODO: define the 'space' Character constant
let space: Character = " "
// TODO: define the 'exclamation' Character constant
let exclamation: Character = "!"
func buildSign(for occasion: String, name: String) -> String {
    var greeting = "Happy"
    greeting.append(String(space))
    greeting.append(occasion)
    greeting.append(String(space))
    greeting.append(name)
    greeting.append(String(exclamation))
    return greeting
}

func graduationFor(name: String, year: Int) -> String {
    var congrats = "Congratulations"
    congrats.append(String(space))
    congrats.append(name)
    congrats.append(String(exclamation))
    congrats.append("\n")
    congrats.append("Class of")
    congrats.append(String(space))
    congrats.append(String(year))
    return congrats
}

func costOf(sign: String) -> Int {
  return 20 + sign.count*2
}
