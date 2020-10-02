//
//  DetailVC.swift
//  Image
//
//  Created by Kia Malek on 28.09.20.
//  Copyright © 2020 Kia Malek. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titelLbl: UILabel!
    var object :ObjectModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titelLbl.text = object.title
        image.image = UIImage(named: object.imageName)
        
        
    }
    

  

}
