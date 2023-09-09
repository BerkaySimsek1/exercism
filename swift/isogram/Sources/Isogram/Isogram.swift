import Foundation

func isIsogram(_ string: String) -> Bool {
    var str = string.lowercased().filter {$0.isLetter}
    return str.count == Set(str).count
}

