func toRna(_ dna: String) -> String {
let dnaDict: [Character:Character] = ["G":"C","C":"G","T":"A","A":"U"]

return String(dna.map{dnaDict[$0]!})
}
