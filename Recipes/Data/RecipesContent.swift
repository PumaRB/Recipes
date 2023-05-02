//
//  RecipesContent.swift
//  Recipes
//
//  Created by Rimma Katushina on 28/04/2023.
//

import Foundation

class RecipesContent {
    
    static func getSaladRecipe() -> [Recipe] {
        [Recipe(name: "Christmas salad",
                img: "christmas salad",
                steps: StepsContent.getChristmasSaladSteps(),
                ingridientList: IngridientContent.getChristmasSaladIngridients(),
                time: "10 min",
                complexityImg: "easy",
                complexityText: "easy"),
                 
         Recipe(name: "Potato salad",
                img: "potato salad",
                steps: StepsContent.getChristmasSaladSteps(),
                ingridientList: IngridientContent.getChristmasSaladIngridients(),
                time: "20 min",
                complexityImg: "not easy",
                complexityText: "not easy"),
         
         Recipe(name: "Cypriot (and also Bulgarian) salad",
                img: "cypriot (and also Bulgarian) saladd",
                steps: StepsContent.getChristmasSaladSteps(),
                ingridientList: IngridientContent.getChristmasSaladIngridients(),
                time: "12 min",
                complexityImg: "not easy",
                complexityText: "not easy"),
         
         Recipe(name: "Mixed leaf salad with mozzarella, mint, peach & prosciutto",
                img: "Mixed leaf salad",
                steps: StepsContent.getChristmasSaladSteps(),
                ingridientList: IngridientContent.getChristmasSaladIngridients(),
                time: "25 min",
                complexityImg: "easy",
                complexityText: "easy"),
         
         Recipe(name: "Broccoli salad",
                img: "Broccoli salad",
                steps: StepsContent.getChristmasSaladSteps(),
                ingridientList: IngridientContent.getChristmasSaladIngridients(),
                time: "20 min",
                complexityImg: "easy",
                complexityText: "easy"),
         
         Recipe(name: "Greek salad",
                img: "greek salad",
                steps: StepsContent.getChristmasSaladSteps(),
                ingridientList: IngridientContent.getChristmasSaladIngridients(),
                time: "2 min",
                complexityImg: "easy",
                complexityText: "easy")]
    }
    static func getDesertsRecipe() -> [Recipe] {
        [Recipe(name: "Desert1",
                img: "",
                steps: StepsContent.getChristmasSaladSteps(),
                ingridientList: IngridientContent.getChristmasSaladIngridients(),
                time: "1 min",
                complexityImg: "not easy",
                complexityText: "not easy"),
         
         Recipe(name: "Desert2",
                img: "",
                steps: StepsContent.getChristmasSaladSteps(),
                ingridientList: IngridientContent.getChristmasSaladIngridients(),
                time: "2 min",
                complexityImg: "easy",
                complexityText: "easy"),
         
         Recipe(name: "Desert3",
                img: "",
                steps: StepsContent.getChristmasSaladSteps(),
                ingridientList: IngridientContent.getChristmasSaladIngridients(),
                time: "20 min",
                complexityImg: "easy",
                complexityText: "easy"),
         
         Recipe(name: "Desert4",
                img: "",
                steps: StepsContent.getChristmasSaladSteps(),
                ingridientList: IngridientContent.getChristmasSaladIngridients(),
                time: "20 min",
                complexityImg: "not easy",
                complexityText: "not easy")]
    }
    static func getMainDishesRecipe() -> [Recipe] {
        [Recipe(name: "Involtini di manzo",
                img: "Involtini di manzo",
                steps: StepsContent.getChristmasSaladSteps(),
                ingridientList: IngridientContent.getChristmasSaladIngridients(),
                time: "1 h 55 m",
                complexityImg: "difficult",
                complexityText: "difficult"),
         
         Recipe(name: "Main2",
                img: "",
                steps: StepsContent.getChristmasSaladSteps(),
                ingridientList: IngridientContent.getChristmasSaladIngridients(),
                time: "20 min",
                complexityImg: "easy",
                complexityText: "easy"),
         
         Recipe(name: "Main3",
                img: "",
                steps: StepsContent.getChristmasSaladSteps(),
                ingridientList: IngridientContent.getChristmasSaladIngridients(),
                time: "20 min",
                complexityImg: "not easy",
                complexityText: "not easy"),
         
         Recipe(name: "Main4",
                img: "",
                steps: StepsContent.getChristmasSaladSteps(),
                ingridientList: IngridientContent.getChristmasSaladIngridients(),
                time: "12 min",
                complexityImg: "easy",
                complexityText: "easy")]
        
    }
}


