//
//  GreenViewController.swift
//  Deliveryy
//
//  Created by Ludovic Ollagnier on 14/03/2019.
//  Copyright © 2019 Human Coders. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var bigLabel: UILabel!

    var item: MenuItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        guard let item = item else { fatalError("This class requires a menuItem") }

        bigLabel.text = item?.name
        title = item?.name

        demoEncodage()
    }
    

    private func demoEncodage() {
        let resto = Restaurant(name: "McDo")

        for i in 0...10 {
            let item = MenuItem(name: "Menu Hamburger \(i)", details: "Ne pas manger", price: 5, category: .main, isVegan: false, isGlutenFree: false)
            resto.add(item)
        }

        let jsonEncoder = JSONEncoder()
        let plistEncoder = PropertyListEncoder()
        plistEncoder.outputFormat = .xml

        if let jsonData = try? jsonEncoder.encode(resto) {
            print(String(data: jsonData, encoding: .utf8)!)
        }

        if let plistData = try? plistEncoder.encode(resto) {
            print(String(data: plistData, encoding: .utf8)!)

            var documents = urlDossierDocuments()
            documents.appendPathComponent("data")
            documents.appendPathExtension("plist")

            print(documents)
            try? plistData.write(to: documents)
        }
    }

    private func urlDossierDocuments() -> URL {

        let fm = FileManager.default
        let url = fm.urls(for: .documentDirectory, in: .userDomainMask).first!

        return url
    }
}
