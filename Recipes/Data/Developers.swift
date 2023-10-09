//
//  Developers.swift
//  Recipes
//
//  Created by Иса on 24.07.2023.
//

import Foundation

struct Developer {
    let lastname: String
    let name: String
    let listOfWorkDone: String
    let image: String
}

let DEVELOPERS: [Developer] = [
    Developer(lastname: "Arbukhov", name: "Isa", listOfWorkDone: "Favorites, Ingridiends, Shopping list", image: "trash"),
    Developer(lastname: "", name: "Rimma", listOfWorkDone: "Model, Recipes, Details", image: "person")
]
