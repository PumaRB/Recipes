//
//  IngridientsContent.swift
//  Recipes
//
//  Created by Rimma Katushina on 01/05/2023.
//

import Foundation

class IngridientContent {
    static func getChristmasSaladIngridients() -> [Ingridient] {
        [Ingridient(ingridientName: "Onion", ingridientCount: "100 g"),
         Ingridient(ingridientName: "Flour", ingridientCount: "300 g")
        ]
    }
}


struct IngridientForShopping {
    var isCheck: Bool
    var ingridiendName: String
    var ingridiendCount: String
    
    init(ingridiend: Ingridient) {
        isCheck = false
        ingridiendName = ingridiend.ingridientName
        ingridiendCount = ingridiend.ingridientCount
    }
}


struct Shopping {
    var name: String
    var ingridientList: [IngridientForShopping]
    
    init(recipe: Recipe) {
        name = recipe.name
        self.ingridientList = [IngridientForShopping]()
        for recipeItem in recipe.ingridientList {
            self.ingridientList.append(IngridientForShopping(ingridiend: recipeItem))
        }
    }
}

var shoppingList: Shopping?
