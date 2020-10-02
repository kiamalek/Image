//
//  Gsllery.swift
//  Image
//
//  Created by Kia Malek on 14.09.20.
//  Copyright © 2020 Kia Malek. All rights reserved.
//

import UIKit

class Gsllery: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var showSelectedItem: UILabel!
    var selectedItem = ""
    var selectedImage :ObjectModel!
    var images = [ObjectModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        showSelectedItem.text = "You selected \(selectedItem)"
        images = DataService.share.getImages(title: selectedItem)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailVC {
            detailVC.object = self.selectedImage
            
        }
    }
    


}
extension Gsllery: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell") as? ImageCell {
            let object = images[indexPath.row]
            cell.updateViews(object: object)
            return cell
        } else {
            return ImageCell()
        }
         
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedImage = images[indexPath.row]
        performSegue(withIdentifier: "DetailVC", sender: self)
        
    }
   }

