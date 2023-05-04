//
//  IngridientsTableViewController.swift
//  Recipes
//
//  Created by Rimma Katushina on 03/05/2023.
//

import UIKit

class IngridientsTableViewController: UITableViewController {
    var recipe: Recipe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        recipe?.ingridientList.count ?? 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recipe?.ingridientList.count ?? 0
    }

    
  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let ingridient = recipe?.ingridientList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = ingridient?.ingridientName
        content.secondaryText = ingridient?.ingridientCount
        return cell
    }

}
