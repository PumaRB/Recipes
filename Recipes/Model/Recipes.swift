//
//  Recipes.swift
//  Recipes
//
//  Created by Rimma Katushina on 18/04/2023.
//

import UIKit

struct Categorie {
    let name: String
    let img: String
    let gradient: Gradient
   
    let recipes: [Recipe]

    static func getCategories() -> [Categorie] {
        [
            Categorie(name: "Salads",
                      img: "salads",
                      gradient:Gradient(
                        startColor: UIColor(red: 0.415, green: 0.837, blue: 0.685, alpha: 1).cgColor,
                        endColor: UIColor(red: 0.061, green: 0.283, blue: 0.283, alpha: 1).cgColor),
                      recipes: Recipe.getSaladRecipe()
                     ),
            Categorie(
                name: "Main dishes",
                img: "mainDishes",
                gradient:Gradient(
                    startColor: UIColor(red: 0.317, green: 0.577, blue: 0.883, alpha: 1).cgColor,
                    endColor: UIColor(red: 0.131, green: 0.275, blue: 0.492, alpha: 1).cgColor),
                recipes: Recipe.getDesertsRecipe()
            ),
            Categorie(
                name: "Desserts",
                img: "deserts",
                gradient:Gradient(
                    startColor: UIColor(red: 0.836, green: 0.558, blue: 0.842, alpha: 1).cgColor,
                    endColor: UIColor(red: 0.316, green: 0.213, blue: 0.333, alpha: 1).cgColor),
                recipes: Recipe.getMainDishesRecipe()
            )
        ]
  
    
   
    }
    
    struct Gradient {
        let startColor: CGColor
        let endColor: CGColor
}


    
    
    struct Recipe {
        let name: String
        let img: String
        //    let steps: [Step]
        let ingridientList: [String]
        let time: String
        let complexity: String
        
        static func getSaladRecipe() -> [Recipe] {
            [Recipe(name: "Christmas salad",
                    img: "christmas salad",
                    ingridientList: ["String","e"],
                    time: "1 min",
                    complexity: "1"),
             
             Recipe(name: "Potato salad",
                    img: "potato salad",
                    ingridientList: ["String2","e2"],
                    time: "2",
                    complexity: "2"),
             
             Recipe(name: "Cypriot (and also Bulgarian) salad",
                    img: "cypriot (and also Bulgarian) saladd",
                    ingridientList: ["String2","e2"],
                    time: "2",
                    complexity: "2"),
             
             Recipe(name: "Potato salad",
                    img: "potato salad",
                    ingridientList: ["String2","e2"],
                    time: "2",
                    complexity: "2"),
             
             Recipe(name: "Cypriot (and also Bulgarian) salad",
                    img: "cypriot (and also Bulgarian) saladd",
                    ingridientList: ["String2","e2"],
                    time: "2",
                    complexity: "2"),
             
             Recipe(name: "Greek salad",
                    img: "greek salad",
                    ingridientList: ["String2","e2"],
                    time: "2",
                    complexity: "2")]
        }
        
        static func getDesertsRecipe() -> [Recipe] {
            [Recipe(name: "Desert1",
                    img: "",
                    ingridientList: ["String","e"],
                    time: "1 min",
                    complexity: "1"),
             
             Recipe(name: "Desert2",
                    img: "",
                    ingridientList: ["String2","e2"],
                    time: "2",
                    complexity: "2"),
             
             Recipe(name: "Desert3",
                    img: "",
                    ingridientList: ["String2","e2"],
                    time: "2",
                    complexity: "2"),
             
             Recipe(name: "Desert4",
                    img: "",
                    ingridientList: ["String2","e2"],
                    time: "2",
                    complexity: "2")]
        }
        
        static func getMainDishesRecipe() -> [Recipe] {
            [Recipe(name: "Main1",
                    img: "",
                    ingridientList: ["String","e"],
                    time: "1 min",
                    complexity: "1"),
             
             Recipe(name: "Main2",
                    img: "",
                    ingridientList: ["String2","e2"],
                    time: "2",
                    complexity: "2"),
             
             Recipe(name: "Main3",
                    img: "",
                    ingridientList: ["String2","e2"],
                    time: "2",
                    complexity: "2"),
             
             Recipe(name: "Main4",
                    img: "",
                    ingridientList: ["String2","e2"],
                    time: "2",
                    complexity: "2")]
            
        }
    }
}
