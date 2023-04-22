//
//  Categories.swift
//  Recipes
//
//  Created by Rimma Katushina on 18/04/2023.
//

struct Categorie {
    let name: String
    let img: String
    
    
    static func getCategories() -> [Categorie] {
        [
        Categorie(name: "Salad", img: "salads"),
        ]
    }
    
}
