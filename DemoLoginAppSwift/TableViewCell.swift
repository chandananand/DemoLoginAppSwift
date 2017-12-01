//
//  TableViewCell.swift
//  DemoLoginAppSwift
//
//  Created by Chandan Anand on 11/16/17.
//  Copyright © 2017 Chandan Anand. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var backgroungCardView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroungCardView.backgroundColor = UIColor.white
        contentView.backgroundColor = UIColor(red:240/255.0,green:240/255.0,blue: 240/255.0, alpha: 1.0)
        backgroungCardView.layer.cornerRadius = 10.0
        backgroungCardView.layer.masksToBounds = false
        backgroungCardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.2).cgColor
        backgroungCardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        backgroungCardView.layer.shadowOpacity = 0.8
        
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
