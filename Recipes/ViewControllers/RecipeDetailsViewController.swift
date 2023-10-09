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
        self.title = recipe?.name
    }
    
}
  

extension RecipeDetailsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let steps = recipe?.steps[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = steps?.header
        content.textProperties.color = UIColor.init(red: 0.938, green: 0.938, blue: 0.938, alpha: 1)
        content.textProperties.font = UIFont.boldSystemFont(ofSize: 24)
        
        content.secondaryText = steps?.description
        content.secondaryTextProperties.color = UIColor.init(red: 0.938, green: 0.938, blue: 0.938, alpha: 1)
        content.secondaryTextProperties.font = UIFont.systemFont(ofSize: 17)
        
        cell.contentConfiguration = content
        cell.backgroundColor = UIColor.init(red: 0.125, green: 0.125, blue: 0.125, alpha: 1)
        
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recipe?.steps.count ?? 0
    }
    
}
