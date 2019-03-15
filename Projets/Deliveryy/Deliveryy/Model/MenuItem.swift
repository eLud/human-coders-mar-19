//
//  MenuItem.swift
//  Deliveryy
//
//  Created by Ludovic Ollagnier on 14/03/2019.
//  Copyright © 2019 Human Coders. All rights reserved.
//

import Foundation

struct MenuItem {

    enum Category: Int {
        case first, main, desert, drink
    }

    let name: String
    var itemDetails: String
    var price: Double
    let category: Category
    var imageURL: URL?

    var isVegan: Bool
    var isGlutenFree: Bool

    init(name: String, details: String, price: Double, category: Category, isVegan: Bool, isGlutenFree: Bool) {
        self.name = name
        self.itemDetails = details
        self.price = price
        self.category = category
        self.isVegan = isVegan
        self.isGlutenFree = isGlutenFree
    }
}

extension MenuItem: CustomStringConvertible {
    var description: String {
        return "Item name : \(name)"
    }
}

extension MenuItem: Equatable {
    static func ==(lhs : MenuItem, rhs: MenuItem) -> Bool {
        return lhs.name == rhs.name
    }
}

extension MenuItem: Comparable {
    static func < (lhs: MenuItem, rhs: MenuItem) -> Bool {
        return lhs.price < rhs.price
    }
}

extension MenuItem: Codable {

}

extension MenuItem.Category : Codable {
    
}
