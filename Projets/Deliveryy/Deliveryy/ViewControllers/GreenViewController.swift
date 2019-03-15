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
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
