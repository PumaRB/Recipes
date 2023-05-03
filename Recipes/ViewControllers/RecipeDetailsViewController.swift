//
//  RecipeDetailsViewController.swift
//  Recipes
//
//  Created by Rimma Katushina on 28/04/2023.
//

import UIKit

class RecipeDetailsViewController: UIViewController {
    @IBOutlet var stepCollection: UICollectionView!
    
    @IBAction func ingridientsButton(_ sender: Any) {
        performSegue(withIdentifier: "ingridients", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let ingridientsVC = segue.destination as? IngridientsTableViewController else {return}
        ingridientsVC.recipe = recipe
//        guard let recipeDetails = segue.destination as? RecipeDetailsViewController else {return}
////         let cell = sender as! RecipesCollectionViewCell
//        recipeDetails.recipe = category?.recipes[indexPath.item]
    }
    
    var recipe: Recipe?
    
    @IBOutlet var collectionLayout: UICollectionViewFlowLayout! {
        didSet {
                collectionLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
            }
    }
    
    
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
  
extension RecipeDetailsViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        recipe?.steps.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? RecipeDetailsCollectionViewCell else { return UICollectionViewCell () }
        let step = recipe?.steps[indexPath.row]
        cell.stepDescrioptionLabel.text = step?.description
        cell.stepName.text = step?.header
        return cell
    }
    
    
    }
    
//extension RecipeDetailsViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
//                        sizeForItemAt indexPath: IndexPath) -> CGSize {
//        
//        let width = collectionView.frame.width - 24
//        return CGSize(width: width, height: 140)
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 0, left: 0, bottom: 24, right: 0)   }
//}

    

   
   
    // MARK: - Navigation


