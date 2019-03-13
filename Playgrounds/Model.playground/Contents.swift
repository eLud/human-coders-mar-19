import Foundation

struct MenuItem {

    enum Category {
        case first, main, desert, drink
    }

    let name: String
    var itemDetails: String
    var price: Double
    let category: Category
    var imageURL: URL?

    var isVegan: Bool
    var isGlutenFree: Bool
}

class Restaurant {

    let name: String
    private var menu: [MenuItem]

    var menuItems: [MenuItem] {
        return menu
    }

    init(name: String, menu: [MenuItem] = []) {
        self.name = name
        self.menu = menu
    }

    func add(_ menuItem: MenuItem) {
        menu.append(menuItem)
    }

    func remove(menuItem: MenuItem) {
        fatalError("NOT IMPLEMENTED!!")
    }
}
var resto = Restaurant(name: "jhfj")
//resto.add()
//resto.remove(menuItem: pizza)


func toto() {
    func titi() {
        print("this is titi")
    }

    //Range
    // x...y : de x à y inclus
    // x..<y : de x à y exclus
    // x doit être < à y
    for _ in 0...10 {
        titi()
        titi()

        let x = 0..<10
    }
}


toto()













