//
//  ImageCell.swift
//  Image
//
//  Created by Kia Malek on 24.09.20.
//  Copyright © 2020 Kia Malek. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet weak var titelLabel: UILabel!
    @IBOutlet weak var bgImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
        
    func updateViews(object: ObjectModel) {
        bgImageView.image = UIImage(named: object.imageName)
        titelLabel.text = object.title
        
    }
}
