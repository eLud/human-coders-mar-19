


let languageName = "Swift"
var version = 4.22575764653734736536
var introductionYear: UInt = 2014
var isAwesome = true

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

struct Plane {

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
