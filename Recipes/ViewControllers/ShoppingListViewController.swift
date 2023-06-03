//
//  ShoppingListViewController.swift
//  Recipes
//
//  Created by Иса on 01.06.2023.
//

import UIKit

final class ShoppingListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorColor = .white
        tableView.rowHeight = 78
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    @IBAction func deleteShoppingList(_ sender: UIBarButtonItem) {
        
        let attribTitle = NSAttributedString(string: "Do you want to delete the ingredients list?", attributes: [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 17)])
        
        let alertDelete = UIAlertController(title: "", message: "", preferredStyle: .alert)
        let delete = UIAlertAction(title: "Clear", style: .destructive) { _ in
            shoppingList = nil
            self.tableView.reloadData()
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        alertDelete.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = UIColor(red: 0.171, green: 0.171, blue: 0.171, alpha: 1)
        alertDelete.view.tintColor = .white
        alertDelete.setValue(attribTitle, forKey: "attributedTitle")
        alertDelete.addAction(delete)
        alertDelete.addAction(cancel)
        
        present(alertDelete, animated: true)
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shoppingList?.ingridientList.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let shoppingCell = tableView.dequeueReusableCell(withIdentifier: "shoppingListCell", for: indexPath) as? ShoppingListViewCell else { return UITableViewCell() }
        guard let ingridiend = shoppingList?.ingridientList[indexPath.row] else { return UITableViewCell() }
        shoppingCell.configure(ingridiend: ingridiend)
        return shoppingCell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        shoppingList?.name
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        shoppingList?.ingridientList[indexPath.row].isCheck.toggle()
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}

extension String {
    func strikeThrough() -> NSAttributedString {
        let attributeString =  NSMutableAttributedString(string: self)
        attributeString.addAttribute(
            NSAttributedString.Key.strikethroughStyle,
            value: NSUnderlineStyle.single.rawValue,
            range:NSMakeRange(0,attributeString.length))
        return attributeString
    }
}
