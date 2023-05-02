//
//  CollectionViewController.swift
//  Recipes
//
//  Created by Rimma Katushina on 22/04/2023.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    var categories = CategorisContent.getCategories()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
     // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = collectionView.indexPathsForSelectedItems?.first else {return}
        guard let recipesList = segue.destination as? ResipesListCollectionViewController else {return}
        recipesList.category = categories[indexPath.item]
        }

    // MARK: - UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
        
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categories.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "card", for: indexPath) as? TestCollectionViewCell else { return UICollectionViewCell () }
        let categorie = categories[indexPath.row]
        
        let gradient = CAGradientLayer()
        gradient.frame = cell.bounds
        gradient.colors = [categorie.gradient.startColor, categorie.gradient.endColor]
        gradient.startPoint = CGPoint(x: 0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1, y: 0.5)
        cell.layer.insertSublayer(gradient, at: 0)
        
        cell.collectionLabel.text = categorie.name
        cell.layer.cornerRadius = 6
        cell.collectionImg.image = UIImage(named: categorie.img)
        
        return cell
    }
    
}

