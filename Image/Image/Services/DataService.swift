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
    private let cars = [
        ObjectModel(title: "Porsche", imageName: "car1.jpg"),
        ObjectModel(title: "Ferrari", imageName: "car2.jpg"),
        ObjectModel(title: "Hyundai", imageName: "car3.jpg")
    ]
    private let natures = [
        ObjectModel(title: "Lake", imageName: "nature1.jpg"),
        ObjectModel(title: "Montain", imageName: "nature2.png"),
        ObjectModel(title: "River", imageName: "nature3.jpg")
    ]
    /* func getAnimals() -> [ObjectModel] {
     return animals
     }
     */
    func getImages(title: String) -> [ObjectModel] {
        if title == "Animals" {
            return animals
        } else if title == "Cars" {
            return cars
        } else if title == "Natures" {
            return natures
            
        } else {
            return animals
        }
        
        
    }
    
}
