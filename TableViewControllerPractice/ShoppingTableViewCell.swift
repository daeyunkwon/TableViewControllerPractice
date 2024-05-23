//
//  ShoppingTableViewCell.swift
//  TableViewControllerPractice
//
//  Created by 권대윤 on 5/23/24.
//

import UIKit

class ShoppingTableViewCell: UITableViewCell {
    
    @IBOutlet var backView: UIView!
    @IBOutlet var checkButton: UIButton!
    @IBOutlet var itemLabel: UILabel!
    @IBOutlet var starButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backView.backgroundColor = .systemGray6
        backView.layer.cornerRadius = 10
        
        itemLabel.tintColor = .black
        itemLabel.font = .systemFont(ofSize: 13, weight: .medium)
        
        var buttonConfig = UIButton.Configuration.plain()
        buttonConfig.buttonSize = .small
        
        checkButton.tintColor = .black
        checkButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        checkButton.configuration = buttonConfig
        
        starButton.tintColor = .black
        starButton.setImage(UIImage(systemName: "star"), for: .normal)
        starButton.configuration = buttonConfig
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
