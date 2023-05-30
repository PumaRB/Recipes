//
//  IngridientsTableViewController.swift
//  Recipes
//
//  Created by Rimma Katushina on 03/05/2023.
//

import UIKit

class IngridientsTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addIngridiendToListOutlet: UIButton!
    
    var recipe: Recipe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorColor = .white
        addIngridiendToListOutlet.layer.cornerRadius = 10
        setupStatusButton()
    }
    
    func setupStatusButton() {
        if shoppingList.isEmpty {
            addIngridiendToListOutlet.setTitle("Add to a shopping list", for: .normal)
            addIngridiendToListOutlet.backgroundColor = UIColor(red: 0.028, green: 0.521, blue: 0.462, alpha: 1)
            addIngridiendToListOutlet.tag = 0
        }
        else {
            addIngridiendToListOutlet.setTitle("Remove from a shopping list", for: .normal)
            addIngridiendToListOutlet.backgroundColor = UIColor(red: 0.775, green: 0.32, blue: 0.22, alpha: 1)
            addIngridiendToListOutlet.tag = 1
        }
    }

    // MARK: - Table view data source

    @IBAction func addIngridiendToListAction() {
        switch addIngridiendToListOutlet.tag {
        case 0: shoppingList = recipe?.ingridientList ?? []
        case 1: shoppingList.removeAll()
        default: break
        }
        setupStatusButton()
    }
}

extension IngridientsTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recipe?.ingridientList.count ?? 0
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ingridiendCell", for: indexPath)
        let ingridient = recipe?.ingridientList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.textProperties.color = .white
        content.secondaryTextProperties.color = .white
        
        content.text = ingridient?.ingridientName
        content.secondaryText = ingridient?.ingridientCount
        
        cell.contentConfiguration = content
        return cell
    }
}
