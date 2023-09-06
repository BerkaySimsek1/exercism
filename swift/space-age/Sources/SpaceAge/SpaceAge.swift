//Solution goes in Sources
enum Planets: Double{
    case mercury = 0.2408467
    case venus = 0.61519726
    case earth = 1.0
    case mars = 1.8808158
    case jupiter = 11.862615
    case saturn = 29.447498
    case uranus = 84.016846
    case neptune = 164.79132
}

let secondsOnEarth: Double = 31557600

class SpaceAge {
    let seconds: Double
    let onEarth: Double
    
    init(_ seconds: Int){
        self.seconds = Double(seconds)
        onEarth = self.seconds / secondsOnEarth
    }

    lazy var onMercury = onEarth / Planets.mercury.rawValue
    lazy var onVenus = onEarth / Planets.venus.rawValue
    lazy var onMars = onEarth / Planets.mars.rawValue
    lazy var onJupiter = onEarth / Planets.jupiter.rawValue
    lazy var onSaturn = onEarth / Planets.saturn.rawValue
    lazy var onUranus = onEarth / Planets.uranus.rawValue
    lazy var onNeptune = onEarth / Planets.neptune.rawValue

}