//
//  DevelopersViewController.swift
//  Recipes
//
//  Created by Иса on 24.07.2023.
//

import UIKit

class DevelopersViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DEVELOPERS.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "developer", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = "\(DEVELOPERS[indexPath.row].lastname) \(DEVELOPERS[indexPath.row].name)"
        content.secondaryText = DEVELOPERS[indexPath.row].listOfWorkDone
        content.image = UIImage(systemName: "person")
        
        content.textProperties.color = .white
        content.secondaryTextProperties.color = .white
        
        content.textProperties.font = .systemFont(ofSize: 30)
        
        cell.contentConfiguration = content
        return cell
    }

}
