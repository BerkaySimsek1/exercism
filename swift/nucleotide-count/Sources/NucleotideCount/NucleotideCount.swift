enum NucleotideCountErrors: Error {
    case invalidNucleotide
}

class DNA {
    var nucMap: [String: Int] = ["A":0,"C":0,"G":0,"T":0]
    let nucStr: String
    init(strand: String) throws{
        nucStr = strand
        
        for i in nucStr {
            if !"ATCG".contains(i) {
                throw NucleotideCountErrors.invalidNucleotide
            }
        }
     }
    
    func counts() -> [String: Int] {
        for i in nucStr.uppercased() {
            if(i=="A" || i=="C" || i=="G" || i=="T"){
                nucMap[String(i)]! += 1
            }
        }
    return nucMap
    }
}