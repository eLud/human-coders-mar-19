


let languageName = "Swift"
var version = 4.22575764653734736536
var introductionYear: UInt = 2014
var isAwesome = true

isAwesome.toggle()

let test: String

if true {
    test = "true"
} else {
    test = "false"
}

let a = 5
let b = 2

let c = Double(a) / Float64(b)

let annonce = languageName + " was introduced in \(introductionYear). It is in version \(version.binade)"

String(version)

// Fonctions

struct Food {}
struct Friend {}
let pizza = Food()
let olives = Food()
let paul = Friend()

func eat() {

}

func eat(snack: Food)  {

}

func eat(_ food: Food, without supplement: Food) {

}

func eat(_ food: Food, with supplement: Food = olives, with friend: Friend = paul) {

    print("Im eatin \(food) with \(friend)")
}

eat(pizza, with: olives, with: paul)
eat()
eat(pizza)

eat(pizza)

// Tuples : (String, Int)

var ratios: (x: Int, y: Float) = (x: 5, y: 10)

ratios.x

func 👋(name: String) -> (🇬🇧: String, 🇫🇷: String) {

    return ("Hello \(name)", "Bonjour \(name)")
}

let result = 👋(name: "Ludovic")
result.🇫🇷

// Modélisation

class Animal {
    let race: String
    var age: Int

    init(race: String) {
        self.race = race
        age = 0
    }
}

class Bird: Animal {

    var featherColor: String

    init(race: String, featherColor: String) {
        self.featherColor = featherColor
        super.init(race: race)
    }
}

struct Plane: Hashable {

    let model: String
    var companyName: String
    var flightHours: Int

    init(model: String, companyName: String) {
        self.model = model
        self.companyName = companyName
        flightHours = 0
    }
}

let myBird = Bird(race: "Swift", featherColor: "Orange")
myBird.age

let myBird2 = myBird
myBird.age = 5

myBird.age
myBird2.age

var model = "A320"
var myPlane = Plane(model: model, companyName: "Air France")

let myPlane2 = myPlane
myPlane.flightHours = 5000

myPlane.flightHours
myPlane2.flightHours

struct Point {
    var x: Double
    var y: Double
}

struct Size {
    var width: Double
    var height: Double

    // get only computed property
    var surface: Double {
        return width * height
    }
}

struct Rectangle {
    var origin: Point
    var size: Size

    func setSize(forCenter newCenter: Point) {

    }

    //Get-Set Computed property
    /// Modifiying this property moves the origin
    var center: Point {
        get {
            let centerX = origin.x + size.width / 2
            let centerY = origin.y + size.height / 2
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            let originX = newCenter.x - size.width / 2
            let originY = newCenter.y - size.height / 2
            origin = Point(x: originX, y: originY)
        }
    }
}

let size = Size(width: 10, height: 10)
size.surface

var rect = Rectangle(origin: Point(x: 0, y: 0), size: size)
rect.center = Point(x: 10, y: 10)

enum TypeDeBien: Int {
    case flat = 10
    case house = 20
    case boat = 30
    case mobileHome = 40

    var stringValue: String {
        switch self {
        case .flat:
            return " Appartement"
        case .house:
            return " Maison"
        case .boat:
            return " Péniche"
        case .mobileHome:
            return " Mobil-home"
        }
    }
}

let bien = TypeDeBien(rawValue: 10)
bien?.rawValue
bien?.stringValue
enum Rooms {
    case one, two
}

enum TypeBien {
    case appartement(type: Rooms)
}


//Collections

//Array : Collection typée dynamique ordonnée indexée

var friends: [String] = ["Paul", "Pierre"]
//let friends: Array<String> = ["Paul", "Pierre"]

friends.append("Luc")
friends[0] = "Toto"
friends.first

let reversed = friends.reversed()

//Dictionary

var capitale = [myPlane : 107956765]
capitale[myPlane2] = 12345678
capitale[myPlane2] = 1234567098765438

capitale[myPlane2]

//Set

let mySet: Set = Set<String>(arrayLiteral: "France", "USA")

let test2: Set = [myPlane2]

//Optionnels

let capitales = ["France" : "Paris", "USA" : "Washington", "Canada" : "Ottawa"]

let capFrance: String? = capitales["France"]
let capIrlande: Optional<String> = capitales["Irlande"]

// Nil coalescing operator
let capUK = capitales["UK"] ?? "No value"

print(capFrance)
print(capIrlande)

var nilProperty: Int? = nil
nilProperty = 5

if capFrance != nil {
    print(capFrance!)
} else {
    print("No value")
}

let capCanada = capitales["Canada"]
if capCanada != nil {

}

if let capCanada = capitales["Canada"], let first = capCanada.first {
    print(capCanada)
} else {

}

let up = capFrance?.uppercased()

import Foundation

func downloadImage(from url: URL) -> String? {

    guard !url.absoluteString.isEmpty else {
        return nil
    }

    guard url.absoluteString.hasPrefix("https") else {
        return nil
    }

    guard let host = url.host, let firstCharacter = host.first else {
        return nil
    }

    // Important code
    return host
}


class Truc {
    var ttot: String?

    func truc() {
        var ttot = "Salut"

        print(self.ttot)
    }

    func test(ttot: String) {
        var ttot = ttot.uppercased()

        print(ttot)
    }
}

friends.append(contentsOf: ["Toto", "Titi", "Tata"])

let subArray = friends[...4]
