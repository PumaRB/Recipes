//
//  Category.swift
//  Recipes
//
//  Created by Rimma Katushina on 28/04/2023.
//

import Foundation
import CoreGraphics

struct Categorie {
    let name: String
    let img: String
    let gradient: Gradient
    let recipes: [Recipe]
}


struct Gradient {
    let startColor: CGColor
    let endColor: CGColor
}
