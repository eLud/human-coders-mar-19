//
//  Restaurant.swift
//  Deliveryy
//
//  Created by Ludovic Ollagnier on 14/03/2019.
//  Copyright © 2019 Human Coders. All rights reserved.
//

import Foundation

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
