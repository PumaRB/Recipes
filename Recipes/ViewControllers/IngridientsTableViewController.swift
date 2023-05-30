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
        tableView.rowHeight = 79
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
        case 0:
            let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
            
            let attribTitle = NSAttributedString(string: "You can only add one recipe to your shopping list.", attributes: [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 17)])
            let  attribMessage = NSAttributedString(string: "Remove the Mac’n cheese from the shopping list and add Christmas salad instead?", attributes: [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 17)])
            
            alert.setValue(attribTitle, forKey: "attributedTitle")
            alert.setValue(attribMessage, forKey: "attributedMessage")
            
            alert.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = UIColor(red: 0.171, green: 0.171, blue: 0.171, alpha: 1)
            alert.view.tintColor = .white            
            
            let add = UIAlertAction(title: "Add recipe", style: .default) {[unowned self] _ in
                shoppingList = recipe?.ingridientList ?? []
                setupStatusButton()
            }
            let cancel = UIAlertAction(title: "Cancel", style: .cancel)
            
            alert.addAction(add)
            alert.addAction(cancel)
            present(alert, animated: true)
        case 1:
            let alertRemove = UIAlertController(title: "", message: "", preferredStyle: .alert)
            
            let attribTitle = NSAttributedString(string: "Do you want to clear shopping list?", attributes: [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 17)])
            
            alertRemove.setValue(attribTitle, forKey: "attributedTitle")
            alertRemove.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = UIColor(red: 0.171, green: 0.171, blue: 0.171, alpha: 1)
            alertRemove.view.tintColor = .white
            
            let cancel = UIAlertAction(title: "Cancel", style: .cancel)
            let clear = UIAlertAction(title: "Clear", style: .default) { [unowned self] _ in
                shoppingList.removeAll()
                setupStatusButton()
            }
            
            alertRemove.addAction(cancel)
            alertRemove.addAction(clear)
            
            present(alertRemove, animated: true)

        default: break
        }
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
