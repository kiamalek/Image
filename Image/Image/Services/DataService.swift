//
//  DataService.swift
//  Image
//
//  Created by Kia Malek on 17.09.20.
//  Copyright © 2020 Kia Malek. All rights reserved.
//

import Foundation
class DataService {
    static let share = DataService()
    private let animals = [
        ObjectModel(title: "Griff", imageName: "animal1.png"),
        ObjectModel(title: "Cheeta", imageName: "animal2.jpg"),
        ObjectModel(title: "Elephent", imageName: "animal3.jpg")
    ]
}
