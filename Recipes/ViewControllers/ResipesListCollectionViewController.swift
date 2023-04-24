//
//  ResipesListCollectionViewController.swift
//  Recipes
//
//  Created by Rimma Katushina on 23/04/2023.
//

import UIKit


class ResipesListCollectionViewController: UICollectionViewController {
   
    var recipes = Recipe.getRecipe()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        recipes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "card", for: indexPath) as? RecipesCollectionViewCell else { return UICollectionViewCell () }
        
        let recipe = recipes[indexPath.row]
        cell.recipeImg.image = UIImage(named: recipe.img)
        
        return cell
    }
    
  

    // MARK: UICollectionViewDelegate

   

}

extension ResipesListCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = 271
        return CGSize(width: collectionView.frame.width / 2 - 24, height: CGFloat(height))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 16, bottom: 32, right: 16)   }
    
}

