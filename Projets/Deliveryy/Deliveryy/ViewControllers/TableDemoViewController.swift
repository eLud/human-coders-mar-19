//
//  TableDemoViewController.swift
//  Deliveryy
//
//  Created by Ludovic Ollagnier on 15/03/2019.
//  Copyright © 2019 Human Coders. All rights reserved.
//

import UIKit

class TableDemoViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let source = ArrayTableViewDataSource(withArray: ["Titi", "Toto"])

    override func viewDidLoad() {
        super.viewDidLoad()

//        tableView.dataSource = source
    }

}

extension TableDemoViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 100
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Recupere une cellule recyclable depuis le tableView
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuItemCell", for: indexPath)

        // On customise la cell
        cell.textLabel?.text = "Section \(indexPath.section) Ligne \(indexPath.row)"
        cell.detailTextLabel?.text = "Détails"

        return cell
    }

}


class ArrayTableViewDataSource: NSObject, UITableViewDataSource {

    private var array: [String]

    init(withArray: [String]) {
        self.array = withArray

        super.init()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Ne JAMAIS!! créer de cellules comme ça ! S'appuyer sur le recyclage !!!
        let cell = UITableViewCell()
        cell.textLabel?.text = array[indexPath.row]

        return cell
    }
}
