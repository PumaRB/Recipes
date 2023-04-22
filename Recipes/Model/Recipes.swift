//
//  Recipes.swift
//  Recipes
//
//  Created by Rimma Katushina on 18/04/2023.
//

struct Recipe {
    let name: String
    let description: String
    let img: String
//    let steps: [Step]
    let ingridientList: [String]
    let time: String
    let complexity: String
    
    static func getRecipe() -> [Recipe] {
        [ Recipe(name: "Name", description: "Description", img: "salads", ingridientList: ["String","e"], time: "", complexity: "")
        ]
    }
}


//struct Step {
//    let name = ""
//    let description = ""
//}
