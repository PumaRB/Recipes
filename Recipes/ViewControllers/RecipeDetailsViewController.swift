//
//  RecipeDetailsViewController.swift
//  Recipes
//
//  Created by Rimma Katushina on 28/04/2023.
//

import UIKit

class RecipeDetailsViewController: UIViewController {
    @IBOutlet var stepCollection: UICollectionView!
    
    var recipe: Recipe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
  
extension RecipeDetailsViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        recipe?.steps.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? RecipeDetailsCollectionViewCell else { return UICollectionViewCell () }
        let step = recipe?.steps[indexPath.row]
        cell.stepDescrioptionLabel.text = step?.description
        cell.stepName.text = "Text"
        cell.backgroundColor = .black
        return cell
    }
    

    }
    
    
    

   
   
    // MARK: - Navigation

 


