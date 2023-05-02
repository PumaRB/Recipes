//
//  RecipesCollectionViewCell.swift
//  Recipes
//
//  Created by Rimma Katushina on 23/04/2023.
//

import UIKit

class RecipesCollectionViewCell: UICollectionViewCell {
    @IBOutlet var recipeImg: UIImageView!
    @IBOutlet var recipeNameLabel: UILabel!
    @IBOutlet var recipeTimeLabel: UILabel!
    @IBOutlet var recipeDifficultyImg: UIImageView!
    @IBOutlet var recipeDifficultyLabel: UILabel!
    var recipe: Recipe?
}
