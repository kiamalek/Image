//
//  ViewController.swift
//  Image
//
//  Created by Kia Malek on 14.09.20.
//  Copyright © 2020 Kia Malek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var selectedItem = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func ChoosUI(_ sender: UIButton) {
        selectedItem = sender.title(for: .normal)!
        performSegue(withIdentifier: "showGallery", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gallery = segue.destination as? Gsllery {
            gallery.selectedItem = selectedItem
            
            
        }
       
    }
    
  
 


}
