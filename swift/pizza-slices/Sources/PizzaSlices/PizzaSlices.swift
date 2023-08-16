import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let diameter = diameter, diameter>=0 else {return nil}
    guard let slices = slices, slices>0 else {return nil}
    return Double.pi * pow(diameter/2,2) / Double(slices)
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
    let sizeA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let sizeB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
    if (sizeA == sizeB) {return "Neither slice is bigger"}
    guard let sizeA = sizeA else {return "Slice B is bigger"}
    guard let sizeB = sizeB else {return "Slice A is bigger"}
    return sizeA > sizeB ? "Slice A is bigger" : "Slice B is bigger"
}
