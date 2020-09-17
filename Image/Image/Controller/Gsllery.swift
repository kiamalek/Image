//
//  Gsllery.swift
//  Image
//
//  Created by Kia Malek on 14.09.20.
//  Copyright © 2020 Kia Malek. All rights reserved.
//

import UIKit

class Gsllery: UIViewController {

    @IBOutlet weak var showSelectedItem: UILabel!
    var selectedItem = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        showSelectedItem.text = "You selected \(selectedItem)"
        

        
    }
    


}
