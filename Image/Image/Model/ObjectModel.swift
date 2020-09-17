//
//  ObjectModel.swift
//  Image
//
//  Created by Kia Malek on 17.09.20.
//  Copyright © 2020 Kia Malek. All rights reserved.
//

import Foundation
class ObjectModel {
    public private(set) var title: String!
    public private(set) var imageName : String!
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
