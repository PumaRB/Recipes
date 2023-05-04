//
//  RecipeDetailsViewController.swift
//  Recipes
//
//  Created by Rimma Katushina on 28/04/2023.
//

import UIKit

class RecipeDetailsViewController: UIViewController {

    
    @IBAction func ingridientsButton(_ sender: Any) {
        performSegue(withIdentifier: "ingridients", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let ingridientsVC = segue.destination as? IngridientsTableViewController else {return}
        ingridientsVC.recipe = recipe
    }
    
    var recipe: Recipe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
  

extension RecipeDetailsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let steps = recipe?.steps[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = steps?.header
        content.secondaryText = steps?.description
        cell.contentConfiguration = content
        cell.backgroundColor = UIColor.init(red: 0.125, green: 0.125, blue: 0.125, alpha: 1)
        
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recipe?.steps.count ?? 0
    }
    
}
