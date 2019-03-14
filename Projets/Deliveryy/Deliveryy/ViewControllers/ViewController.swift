//
//  ViewController.swift
//  Deliveryy
//
//  Created by Ludovic Ollagnier on 13/03/2019.
//  Copyright © 2019 Human Coders. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stack: UIStackView!
    @IBOutlet var cell: UIView!

    @IBOutlet weak var nameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func test(_ sender: Any) {
        let cell = makeCell(withText: "Test")
        stack.insertArrangedSubview(cell, at: 0)
    }
    
    //Permet le passage d'infos lors de l'execution d'un segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "greenScreen" {
            guard let destination = segue.destination as? GreenViewController else {
                fatalError("Wrong destination type. Let's die.")
            }
//            destination.item = MenuItem.ini
        }
    }

}


func makeCell(withText text: String) -> UIView {
    let view = UIView()
    let label = UILabel()
    label.text = text

    let aSwitch = UISwitch()
    aSwitch.isOn = false

    let stack = UIStackView()
    stack.axis = .horizontal

    stack.addArrangedSubview(label)
    stack.addArrangedSubview(aSwitch)

    view.addSubview(stack)

    stack.translatesAutoresizingMaskIntoConstraints = false
    
    stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
    stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8).isActive = true
    stack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 8).isActive = true
    stack.topAnchor.constraint(equalTo: view.topAnchor, constant: 8).isActive = true

    return view

}
