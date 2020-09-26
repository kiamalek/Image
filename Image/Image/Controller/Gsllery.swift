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
    var images = [ObjectModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        showSelectedItem.text = "You selected \(selectedItem)"
        images = DataService.share.getImages(title: selectedItem)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        
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
    
    
}
