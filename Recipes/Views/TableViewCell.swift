//
//  TableViewCell.swift
//  Recipes
//
//  Created by Rimma Katushina on 22/04/2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    @IBOutlet var categoryImg: UIImageView!
    @IBOutlet var categoryNameLabel: UILabel!
}
