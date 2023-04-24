//
//  Categories.swift
//  Recipes
//
//  Created by Rimma Katushina on 18/04/2023.
//

import UIKit

struct Categorie {
    let name: String
    let img: String
let gradient: Gradient
    
    static func getCategories() -> [Categorie] {
        
        [
            Categorie(name: "Salads",
                      img: "salads",
                      gradient:Gradient(
                        startColor: UIColor(red: 0.415, green: 0.837, blue: 0.685, alpha: 1).cgColor,
                        endColor: UIColor(red: 0.061, green: 0.283, blue: 0.283, alpha: 1).cgColor
                      )
                     ),
            Categorie(
                name: "Main dishes",
                img: "mainDishes",
                gradient:Gradient(
                    startColor: UIColor(red: 0.317, green: 0.577, blue: 0.883, alpha: 1).cgColor,
                    endColor: UIColor(red: 0.131, green: 0.275, blue: 0.492, alpha: 1).cgColor
                )
            ),
            Categorie(
                name: "Desserts",
                img: "deserts",
                gradient:Gradient(
                    startColor: UIColor(red: 0.836, green: 0.558, blue: 0.842, alpha: 1).cgColor,
                    endColor: UIColor(red: 0.316, green: 0.213, blue: 0.333, alpha: 1).cgColor
                )
            )
        ]
    }
}


struct Gradient {
    let startColor: CGColor
    let endColor: CGColor
}
