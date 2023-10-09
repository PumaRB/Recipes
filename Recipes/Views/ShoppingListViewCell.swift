//
//  ShoppingListViewCell.swift
//  Recipes
//
//  Created by Иса on 02.06.2023.
//

import UIKit

class ShoppingListViewCell: UITableViewCell {

    @IBOutlet weak var ingridiendImage: UIImageView!
    @IBOutlet weak var ingridiendName: UILabel!
    @IBOutlet weak var ingridiendCount: UILabel!
    
    func configure(ingridiend: IngridientForShopping) {
        
        self.selectionStyle = .none
        
        ingridiendName.text = ingridiend.ingridiendName
        ingridiendCount.text = ingridiend.ingridiendCount
        ingridiendImage.image = ingridiend.isCheck ? UIImage(named: "checkboxTrue") : UIImage(named: "checkboxFalse")
        
        if ingridiend.isCheck {
            ingridiendName.attributedText = ingridiendName.text?.strikeThrough()
            ingridiendCount.attributedText = ingridiendCount.text?.strikeThrough()
            
            ingridiendName.textColor = UIColor(red: 0.45, green: 0.45, blue: 0.45, alpha: 1)
            ingridiendCount.textColor = UIColor(red: 0.45, green: 0.45, blue: 0.45, alpha: 1)
        }
    }
}
