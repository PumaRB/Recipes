//
//  ResipesListCollectionViewController.swift
//  Recipes
//
//  Created by Rimma Katushina on 23/04/2023.
//

import UIKit


class ResipesListCollectionViewController: UICollectionViewController {
    
    var category: Categorie?
 
    override func viewDidLoad() {
        self.title = category?.name
        super.viewDidLoad()
    }
    
     // MARK: - Navigation
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         guard let indexPath = collectionView.indexPathsForSelectedItems?.first else {return}
         guard let recipeDetails = segue.destination as? RecipeDetailsViewController else {return}
//         let cell = sender as! RecipesCollectionViewCell
         recipeDetails.recipe = category?.recipes[indexPath.item]
     }

    
    // MARK: - UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
       1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        category?.recipes.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "card", for: indexPath) as? RecipesCollectionViewCell else { return UICollectionViewCell () }
        let recipe = category?.recipes[indexPath.row]
        cell.recipe = recipe
        cell.recipeImg.image = UIImage(named: recipe?.img ?? "nil")
        cell.recipeNameLabel.text = recipe?.name
        cell.recipeTimeLabel.text = recipe?.time
        cell.recipeDifficultyLabel.text = recipe?.complexityText
        switch recipe?.complexityText {
        case "easy":
            cell.recipeDifficultyImg.image = UIImage(named: "easy1")
        case "not easy":
            cell.recipeDifficultyImg.image = UIImage(named: "easy2");
        case "difficult":
            cell.recipeDifficultyImg.image = UIImage(named: "easy3");
        case .none:
            cell.recipeDifficultyImg.image = UIImage(named: "easy3");
        case .some(_):
            cell.recipeDifficultyImg.image = UIImage(named: "easy3");
        }
        
        cell.layer.cornerRadius = 12
        return cell
    }
    // MARK: UICollectionViewDelegate
}

extension ResipesListCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 2 - 24
        let height = width * 1.5
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 16, bottom: 32, right: 16)   }
}


