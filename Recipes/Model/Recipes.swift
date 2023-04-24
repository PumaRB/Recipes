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
        [Recipe(name: "Christmas salad",
                 description: "This recipe works great as a stand-alone dish, but also as a component in Jamie’s Christmas Party from Together – see the full collection of menus",
                 img: "christmas salad",
                 ingridientList: ["String","e"],
                 time: "1 min",
                 complexity: "1"),
         
         Recipe(name: "Potato salad",
                  description: "Description2",
                  img: "potato salad",
                  ingridientList: ["String2","e2"],
                  time: "2",
                  complexity: "2"),
         
         Recipe(name: "Cypriot (and also Bulgarian) salad",
                  description: "Description2",
                  img: "cypriot (and also Bulgarian) saladd",
                  ingridientList: ["String2","e2"],
                  time: "2",
                  complexity: "2"),
         
        Recipe(name: "Greek salad",
                 description: "greek salad",
                 img: "greek salad",
                 ingridientList: ["String2","e2"],
                 time: "2",
                 complexity: "2")]
        
    }
}


//struct Step {
//    let name = ""
//    let description = ""
//}
