//
//  DetailTableViewCell.swift
//  Restaurant
//
//  Created by thienle on 6/30/15.
//  Copyright (c) 2015 thienle. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var fieldLabel:UILabel!
    @IBOutlet weak var valueLabel:UILabel!
    @IBOutlet weak var mapButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
